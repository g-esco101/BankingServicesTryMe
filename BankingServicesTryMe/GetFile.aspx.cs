using System;

namespace BankingServicesTryMe
{
    public partial class GetFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void getFile(object sender, EventArgs e)
        {
            try
            {
                string archivedName = FileName.Text;
                ServiceReference1.myInterfaceClient myPxy = new ServiceReference1.myInterfaceClient();
                Status.Text = myPxy.GetFile(archivedName);
                myPxy.Close();
            }
            catch (Exception ex)
            {
                Status.Text = ex.Message;
            }
        }
    }
}