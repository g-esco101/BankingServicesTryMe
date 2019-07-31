using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankingServicesTryMe
{
    public partial class GetAccountInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Gets the account number, nickname, & balance. 
        protected void getInfo(object sender, EventArgs e)
        {
            ServiceReference1.myInterfaceClient myPxy = new ServiceReference1.myInterfaceClient();
            result.Text = myPxy.GetAccountInfo(Owner.Text);
            myPxy.Close();
        }
    }
}