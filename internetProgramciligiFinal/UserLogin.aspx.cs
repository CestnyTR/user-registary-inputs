using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace internetProgramciligiFinal
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void UserLogin_Click(object sender, EventArgs e)
        {
            var sonuc = new metotlar().controlUser(txtbxUserName.Text, txtbxUserPassword.Text);
            if (sonuc)
            {
                Response.Redirect("UserList.aspx");
            }
            else
            {
                lblError.Text = "Hatalı Giriş Lütfen Kullanıcı Adı ve şifrenizin doğruluğundan emin olun";
            }
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            Response.Redirect("registry.aspx");

        }
    }
}