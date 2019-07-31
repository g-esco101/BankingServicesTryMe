using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankingServicesTryMe
{
    public partial class Withdrawal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Given the account nickname & the amount, it withdrawals the amount from the account & returns the new balance.
        protected void withdrawal(object sender, EventArgs e)
        {
            ServiceReference1.myInterfaceClient myPxy = new ServiceReference1.myInterfaceClient();
            string owner = myPxy.GetOwner(Nickname.Text);
            if (owner.Length > 0)
            {
                string[] info = myPxy.GetAccountInfo(owner).Split(' ');
                if (info.Length > 2)
                {
                    OldBalance.Text = info[2];
                    Balance.Text = myPxy.Withdrawal(Nickname.Text, Amount.Text);
                }
                else
                {
                    OldBalance.Text = "Invalid input";
                }
            }
            else
            {
                OldBalance.Text = "Invalid input";
            }
            myPxy.Close();
        }
    }
}