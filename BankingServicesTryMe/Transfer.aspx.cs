using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankingServicesTryMe
{
    public partial class Transfer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Calls the Transfer service. Input: the source account nickname, its password,
        // amount, & destination account nicknames. It displays the new balance of the source account. 
        protected void transfer(object sender, EventArgs e)
        {
            ServiceReference1.myInterfaceClient myPxy = new ServiceReference1.myInterfaceClient();
            string owner = myPxy.GetOwner(Nickname.Text);
            if (owner.Length > 0)
            {
                string[] info = myPxy.GetAccountInfo(owner).Split(' ');
                if (info.Length > 2)
                {
                    OldBalance.Text = info[2];
                    Balance.Text = myPxy.Transfer(Nickname.Text, dNickname.Text, Amount.Text);
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