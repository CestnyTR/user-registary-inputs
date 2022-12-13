<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="internetProgramciligiFinal.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
            margin: 100px;
        }
        .auto-style2 {
            height:50px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 500px;
            height:500px;
        }
        .auto-style5 {
            width: 500px;
            height: 500px;
        }
    </style>
</head>
<body bgcolor="#a8a8a8">
    <form id="form1" runat="server">            <center>

        <div>

            <table class="auto-style4">
                <tr>
                    <td><img src="resim/FA.png" </td class="auto-style5">
                </tr>
            </table>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblUser" runat="server" Text="Kullanıcı Adı"></asp:Label>
                    </td>
                    <td class="auto-style2">
        <asp:TextBox ID="txtbxUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblPass" runat="server" Text="Şifre"></asp:Label>
                    </td>
                    <td class="auto-style3">
        <asp:TextBox ID="txtbxUserPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
        <asp:Button ID="btnUserLogin" runat="server" OnClick="UserLogin_Click" Text="Giriş yap" />
                    </td>
                    <td>
        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
        <asp:Button ID="btnKayit" runat="server" OnClick="btnKayit_Click" Text="KAYIT OL" Width="500px" />
                    </td>
                 
                </tr>
            </table>
        
        </div>
        </center>
    </form>
</body>
</html>
