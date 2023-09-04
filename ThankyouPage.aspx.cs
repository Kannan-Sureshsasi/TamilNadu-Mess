using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TamilNadu_Mess
{
    public partial class ThankyouPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
                USName.Text = Session["username"] as string;
                TAount.Text = Session["Totalamount"] as string;
                Sitem.Text = Session["SelectedItem"] as string;
        }
    }
}