using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankingServicesTryMe
{
    public partial class AccountExists : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Checks if the account exists in Accounts.xml. 
        protected void accountExists(object sender, EventArgs e)
        {
            ServiceReference1.myInterfaceClient myPxy = new ServiceReference1.myInterfaceClient();
            if (myPxy.AccountExists(AccountOwner.Text))
            {
                    myPxy.Close();
                    Status.Text = "Account exists";
                    return;
            }
            myPxy.Close();
            Status.Text = "Account does not exist";
        }
    }
}