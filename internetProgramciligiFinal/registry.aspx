<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registry.aspx.cs" Inherits="internetProgramciligiFinal.registry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type = "text/css" >
    .container {
        margin-left: auto;
        margin-right: auto;
        background:#a8a8a8;
    } </style>
</head>
<body bgcolor="#a8a8a8">
    <form id="form1" runat="server">
        <div>
            <table style="width:800px" class="container">
               <tr>
                    <td>
                        <h1>Web Geliştirici ,Programcı Boşluğu</h1>
                        <p> Lütfen alttaki formu kişisel ve profesyonel bilgilerinizle doldurunuz.</p>  
                    </td>
                </tr>
            </table>
            <table style="width:800px" class="container">
               <tr>
                    <td>isim</td>
                    <td> <asp:TextBox ID="txtbx_Name" runat="server" MaxLength="20"></asp:TextBox>
                        <br />
                        adınız
                    </td>
                    <td> <asp:TextBox ID="txtbx_SurName" runat="server" MaxLength="20"></asp:TextBox>
                        <br />
                        soyadınız
                    </td>
                </tr>
            </table>


             <table style="width:800px" class="container">
               <tr>
                    <td>Doğum tarihi</td>
                    <td>
                        <asp:TextBox ID="txtbx_DT" runat="server" TextMode="Date"></asp:TextBox>
                        <br />
                    </td> 
                </tr>
            </table>


             <table style="width:800px" class="container">
               <tr>
                    <td>Cinsiyet</td>
                    <td>
                        <asp:RadioButton ID="rb_Female" runat="server" OnCheckedChanged="rbkız_CheckedChanged" Text="Kız" />
                        <asp:RadioButton ID="rb_Male" runat="server" OnCheckedChanged="rberkek_CheckedChanged" Text="Erkek" />
                    </td> 
                </tr>
            </table>

            
             <table style="width:800px" class="container">
                 <p style="width:800px" class="container">Neleri kullanıyorsunuz ? Platformlar ,işletim sistemleri ,programlama dilleri ,mimariler vs</p>
               <tr>
                            <td class="auto-style9">

                                <asp:CheckBox ID="Chxbx" runat="server" Text="Java" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx6" runat="server" Text="LİNUX" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx7" runat="server" Text="Android" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx8" runat="server" Text="Micrasoft Mobile" OnCheckedChanged="Control" />

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">

                                <asp:CheckBox ID="Chxbx0" runat="server" Text="HTML" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx9" runat="server" Text="WİNDOWS" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx10" runat="server" Text="Eclipse" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx11" runat="server" Text="JavaScript" OnCheckedChanged="Control" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:CheckBox ID="Chxbx1" runat="server" Text="C" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx12" runat="server" Text="PERL" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx13" runat="server" Text="Ubuntu" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx14" runat="server" Text="Mac" OnCheckedChanged="Control" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:CheckBox ID="Chxbx2" runat="server" Text="jQuery" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx15" runat="server" Text="İOS" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx16" runat="server" Text="MySQL" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx17" runat="server" Text="RedHat" OnCheckedChanged="Control" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:CheckBox ID="Chxbx3" runat="server" Text="PHP" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx18" runat="server" Text="BlackBerry" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx19" runat="server" Text="ORACLE" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx20" runat="server" Text="C++" OnCheckedChanged="Control" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:CheckBox ID="Chxbx4" runat="server" Text="SQLİTE" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx21" runat="server" Text="WordPress" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx22" runat="server" Text="AJAX" OnCheckedChanged="Control" />
                            </td>
                            <td>
                                <asp:CheckBox ID="Chxbx23" runat="server" Text="PhotoShop" OnCheckedChanged="Control" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:CheckBox ID="Chxbx5" runat="server" Text="JSON" OnCheckedChanged="Control" />
                            </td>
                            <td class="auto-style8">
                                <asp:CheckBox ID="Chxbx24" runat="server" Text="Joomla" OnCheckedChanged="Control" />
                            </td>
                            <td class="auto-style8">
                                <asp:CheckBox ID="Chxbx25" runat="server" Text="CSS" OnCheckedChanged="Control" />
                            </td>
                            <td class="auto-style8">
                                <asp:CheckBox ID="Chxbx26" runat="server" Text="DreamWeaver" OnCheckedChanged="Control" />
                            </td>
                        </tr>

            </table>


            
             <table style="width:800px" class="container">
               <tr>
                    <td>Fotoğraf</td>
                    <td>
                         <asp:FileUpload ID="fu_Image" runat="server" />
                    </td> 
                </tr>
            </table>



             <table style="width:800px" class="container">
                 <tr>
                     <td heigth="70px" width="60px">
                         <asp:Label ID="lbl_Calisma" runat="server" heigth="60px" Width="108px" Text="Şu anda çalışıyor musunuz ?"></asp:Label>
                     </td>
                     <td>
                        <asp:RadioButton ID="rb_Yes" runat="server" Text="Evet" GroupName="1" OnCheckedChanged="RB1_CheckedChanged" />
                        <br />
                         <asp:RadioButton ID="rb_No" runat="server" Text="Hayır" GroupName="1" OnCheckedChanged="RB2_CheckedChanged" />
                     </td>
                 </tr>
             </table>


            <table style="width:800px" class="container">
                <tr>
                 <td>
                    <asp:Label ID="lbl_Salary" runat="server" Text="Maaş beklentiniz ne kadardır ? *"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbx_salary" runat="server" TextMode="MultiLine" MaxLength="6"></asp:TextBox>
                </td>      
               </tr>
            </table>

             <table style="width:800px" class="container">
                <tr>
                 <td>
                    <asp:Label ID="lbl_SocialMedya" runat="server" Text="Sosyal Medya Hesaplarınızın Listesi ? *"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbx_soscialMedya" runat="server" TextMode="MultiLine" Height="130px" Width="276px"></asp:TextBox>
                </td>      
               </tr>
            </table>


             <table style="width:800px" class="container">
                <tr>
                  <td>
                    <asp:Label ID="lbl_eMail" runat="server" Text="E-Posta"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbx_eMail" runat="server" TextMode="Email" Width="196px" placeholder="fahriaydİn@gmail.com"></asp:TextBox>
                </td>
               </tr>
            </table>



             <table style="width:800px" class="container">
                 <tr>
                     <td>
                         <asp:Label ID="lblProje" runat="server" Text="Hangi Proje Üzerinde Çalışıyorsunuz ? *"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:TextBox ID="txtbx_Proje" runat="server" TextMode="MultiLine" Height="130px" Width="786px"></asp:TextBox>
                     </td>  
                 </tr>   
            </table>


            <table style="width:800px" class="container">
                 <tr>
                     <td>
                         <asp:Label ID="lbl_num" runat="server" Text="Telefon Numarası"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList ID="Ddl_countryCode" runat="server" Height="20px" Width="60px">
                             <asp:ListItem>+90 </asp:ListItem>
                             <asp:ListItem>+560</asp:ListItem>
                             <asp:ListItem>+200</asp:ListItem>
                             <asp:ListItem>+81</asp:ListItem>
                         </asp:DropDownList>
                         <asp:TextBox ID="Txtbx_num" runat="server" TextMode="Phone"></asp:TextBox>
                         <br />
                         <asp:Label ID="lbl_countryCode" runat="server" Text="Alan kodu"></asp:Label>
                         <asp:Label ID="lbl_pNum" runat="server" Text="Telefon numarası"></asp:Label>
                     </td>
                 </tr>   
            </table>



            <table style="width:800px" class="container">
                 <tr>
                     <td> 
                         <asp:Button style="width:800px" class="container" ID="btn_entry" runat="server" Text="Gönder" OnClick="btn_entry_Click1" />
                         <asp:Button style="width:800px" class="container" ID="btn_Clean" runat="server" Text="Formu Temizle" OnClick="btn_clean_Click" />
                         <br />
                         <asp:Button style="width:800px" class="container" ID="btn_back" runat="server" Text="Girişe Dön" OnClick="btn_back_Click" />
                         <br />
                         <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                         <br />
                         <asp:Label ID="Label4" runat="server"></asp:Label>
                     </td>
                 </tr>   
            </table>
          
        </div>
    </form>
</body>
</html>
