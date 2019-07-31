using System;
using System.IO;
using System.Web;

namespace BankingServicesTryMe
{
    public partial class Storage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Stores the uploaded file in the Files directory. Displays the URL to the file's location.
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Sets the archived name of the file.
                string fileName = Path.GetFileName(FileUpload1.FileName);
                int index = fileName.LastIndexOf(".");
                string date = DateTime.Now.ToString("yyyy-M-dd");
                string time = DateTime.Now.ToString("HH-mm-ss");
                string dateTime = "_" + date + "_" + time;
                string archivedName = fileName.Insert(index, dateTime);

                // Provides access to the uploaded file.
                HttpPostedFile postedFile = FileUpload1.PostedFile;
                int fileLen = postedFile.ContentLength;
                byte[] array = new byte[fileLen];
                // Initialize stream
                Stream myStream = postedFile.InputStream;
                // Read file into byte array
                myStream.Read(array, 0, fileLen);
                ServiceReference1.myInterfaceClient myPxy = new ServiceReference1.myInterfaceClient();
                fServerPath.Text = myPxy.Storage(archivedName, array);
                myPxy.Close();
            }
            catch (Exception s)
            {
                fServerPath.Text = s.Message;
            }
        }
    }
}