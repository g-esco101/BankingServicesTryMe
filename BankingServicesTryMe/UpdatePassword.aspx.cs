using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankingServicesTryMe
{
    public partial class UpdatePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Updates the password in the Members.xml file & the Service's Accounts.xml file. 
        protected void update(object sender, EventArgs e)
        {
            if (password1.Text != password2.Text)
            {
                Status.Text = "New password fields must match";
                return;
            }
            ServiceReference1.myInterfaceClient myPxy = new ServiceReference1.myInterfaceClient();
            if (!myPxy.UpdatePassword(Owner.Text, password.Text, password1.Text, password2.Text))
            {
                myPxy.Close();
                Status.Text = "Password update: Unsuccessful";
                return;
            }
            myPxy.Close();
            Status.Text = " Password update: Successful";
        }
    }
}