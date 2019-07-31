using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankingServicesTryMe
{
    public partial class DeleteAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Deletes the account information from Accounts.xml. 
        protected void deleteAccount(object sender, EventArgs e)
        {
            ServiceReference1.myInterfaceClient myPxy = new ServiceReference1.myInterfaceClient();
            if (myPxy.AccountExists(AccountOwner.Text))
            {
                if (myPxy.DeleteAccount(AccountOwner.Text))
                {
                    myPxy.Close();
                    Status.Text = "Account deletion: Successful";
                    return;
                }
            }
            myPxy.Close();
            Status.Text = "Deletion: Unsuccessful";
        }
    }
}