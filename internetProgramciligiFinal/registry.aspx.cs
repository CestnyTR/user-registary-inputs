using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;


namespace internetProgramciligiFinal
{
    public partial class registry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Control(object sender, EventArgs e)
        {

            Label3.Text = " ";
            if (Chxbx.Checked == true) { Label3.Text += Chxbx.Text + " "; }
            if (Chxbx0.Checked == true) { Label3.Text += Chxbx0.Text + " "; }
            if (Chxbx1.Checked == true) { Label3.Text += Chxbx1.Text + " "; }
            if (Chxbx2.Checked == true) { Label3.Text += Chxbx2.Text + " "; }
            if (Chxbx3.Checked == true) { Label3.Text += Chxbx3.Text + " "; }
            if (Chxbx4.Checked == true) { Label3.Text += Chxbx4.Text + " "; }
            if (Chxbx5.Checked == true) { Label3.Text += Chxbx5.Text + " "; }
            if (Chxbx6.Checked == true) { Label3.Text += Chxbx6.Text + " "; }
            if (Chxbx7.Checked == true) { Label3.Text += Chxbx7.Text + " "; }
            if (Chxbx8.Checked == true) { Label3.Text += Chxbx8.Text + " "; }
            if (Chxbx9.Checked == true) { Label3.Text += Chxbx9.Text + " "; }
            if (Chxbx10.Checked == true) { Label3.Text += Chxbx10.Text + " "; }
            if (Chxbx11.Checked == true) { Label3.Text += Chxbx11.Text + " "; }
            if (Chxbx12.Checked == true) { Label3.Text += Chxbx12.Text + " "; }
            if (Chxbx13.Checked == true) { Label3.Text += Chxbx13.Text + " "; }
            if (Chxbx14.Checked == true) { Label3.Text += Chxbx14.Text + " "; }
            if (Chxbx15.Checked == true) { Label3.Text += Chxbx15.Text + " "; }
            if (Chxbx16.Checked == true) { Label3.Text += Chxbx16.Text + " "; }
            if (Chxbx17.Checked == true) { Label3.Text += Chxbx17.Text + " "; }
            if (Chxbx18.Checked == true) { Label3.Text += Chxbx18.Text + " "; }
            if (Chxbx19.Checked == true) { Label3.Text += Chxbx19.Text + " "; }
            if (Chxbx20.Checked == true) { Label3.Text += Chxbx20.Text + " "; }
            if (Chxbx21.Checked == true) { Label3.Text += Chxbx21.Text + " "; }
            if (Chxbx22.Checked == true) { Label3.Text += Chxbx22.Text + " "; }
            if (Chxbx23.Checked == true) { Label3.Text += Chxbx23.Text + " "; }
            if (Chxbx24.Checked == true) { Label3.Text += Chxbx24.Text + " "; }
            if (Chxbx25.Checked == true) { Label3.Text += Chxbx25.Text + " "; }
            if (Chxbx26.Checked == true) { Label3.Text += Chxbx26.Text + " "; }
        }

        string c = " ";
        string d = " ";
        protected void btn_entry_Click1(object sender, EventArgs e)
        {
            try
            {
                if (fu_Image.HasFile)
                {
                    fu_Image.SaveAs(Server.MapPath("/resim/" + fu_Image.FileName));
                    Label4.Text = fu_Image.FileName;
                }
                else
                {
                    Label4.Text = "Hatalı giriş";
                }


                string name = txtbx_Name.Text;
                string surName = txtbx_SurName.Text;
                DateTime birhtDate = DateTime.Parse(txtbx_DT.Text);
                string gender = rb_Male.Text;
                string skils = Label3.Text;
                string image = Label4.Text;
                string isItWorking = rb_Male.Text;
                string salary = txtbx_salary.Text;
                string socialMedya = txtbx_soscialMedya.Text;
                string Email = txtbx_eMail.Text;
                string projes = txtbx_Proje.Text;
                string pNumber = Txtbx_num.Text;
                UserData veriler = new UserData();
                veriler.name = name;
                veriler.surName = surName;
                veriler.birthDate = birhtDate;
                if (rb_Male.Checked)
                {
                    veriler.gender = rb_Male.Text;
                }
                else
                {
                    veriler.gender = rb_Female.Text;
                }
                veriler.skill = Label3.Text;

                Bitmap Resim = new Bitmap(Server.MapPath("/resim/") + image);
                int Genislik = 400;
                int Yukseklik = 400;
                Size Boyut = new Size(Genislik, Yukseklik);
                Bitmap BoyutlandirilmisResim = new Bitmap(Resim, Boyut);
                string BoyutlanmisKayit = "/resim/" + "boyut" + image;
                BoyutlandirilmisResim.Save(Server.MapPath(BoyutlanmisKayit));
                veriler.image = "boyut" + image;


                if (rb_Yes.Checked)
                {
                    veriler.isItWorking = rb_Yes.Text;
                }
                else
                {
                    veriler.isItWorking = rb_No.Text;
                }
                veriler.salary = Convert.ToInt32(salary);
                veriler.socialMedya = socialMedya;
                veriler.e_mail = Email;
                veriler.projes = projes;
                veriler.pNumber = pNumber;
                bool sonuc = new metotlar().addUser(veriler);
                if (sonuc)
                {
                    Response.Write("Veri eklendi");
                    clean();
                }          
            }
            catch (Exception ex)
            {

                Response.Write(ex.ToString());
            }


        }

        protected void Ddl_Cinsiyet_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void rbkız_CheckedChanged(object sender, EventArgs e)
        {
            if (rb_Female.Checked == true)
            {
                c = "KIZ";
            }
        }

        protected void rberkek_CheckedChanged(object sender, EventArgs e)
        {
            if (rb_Male.Checked == true)
            {
                c = "ERKEK";
            }
        }
        public void clean()
        {
            txtbx_Name.Text = "";
            txtbx_SurName.Text = "";
            txtbx_DT.Text = "";
            Chxbx.Checked = false;
            Chxbx0.Checked = false;
            Chxbx1.Checked = false;
            Chxbx2.Checked = false;
            Chxbx3.Checked = false;
            Chxbx4.Checked = false;
            Chxbx5.Checked = false;
            Chxbx6.Checked = false;
            Chxbx7.Checked = false;
            Chxbx8.Checked = false;
            Chxbx9.Checked = false;
            Chxbx10.Checked = false;
            Chxbx11.Checked = false;
            Chxbx12.Checked = false;
            Chxbx13.Checked = false;
            Chxbx14.Checked = false;
            Chxbx15.Checked = false;
            Chxbx16.Checked = false;
            Chxbx17.Checked = false;
            Chxbx18.Checked = false;
            Chxbx19.Checked = false;
            Chxbx20.Checked = false;
            Chxbx21.Checked = false;
            Chxbx22.Checked = false;
            Chxbx23.Checked = false;
            Chxbx24.Checked = false;
            Chxbx25.Checked = false;
            Chxbx26.Checked = false;
            txtbx_salary.Text = "";
            txtbx_Proje.Text = "";
            txtbx_soscialMedya.Text = "";
            txtbx_eMail.Text = "";
            Txtbx_num.Text = "";
            rb_Male.Checked = false;
            rb_Female.Checked = false;
            rb_Yes.Checked = false;
            rb_No.Checked = false;
        }

        protected void btn_clean_Click(object sender, EventArgs e)
        {
            clean();
        }

        protected void RB1_CheckedChanged(object sender, EventArgs e)
        {
            if (rb_Yes.Checked == true)
            {
                d = "EVET";
            }
        }

        protected void RB2_CheckedChanged(object sender, EventArgs e)
        {
            if (rb_No.Checked == true)
            {
                d = "HAYIR";
            }
        }

        protected void btn_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

    }
}