using Restaurant.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant
{
    public partial class Login : System.Web.UI.Page
    {
        DataAccessManagement DAM = new DataAccessManagement();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Imglogin_Click(object sender, ImageClickEventArgs e)
        {
            bool isValid = DAM.ValidateUser(txtUserId.Text, txtPassword.Text);
            if(isValid)
            {
                Response.Redirect("Home.aspx",false);
            }
            else
            {
                lblError.Visible = true;
            }
        }
    }
}