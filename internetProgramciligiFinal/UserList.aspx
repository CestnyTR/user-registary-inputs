<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="internetProgramciligiFinal.UserList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body bgcolor="#a8a8a8">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="850px" ValidateRequestMode="Enabled" DataKeyNames="ID">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="surName" HeaderText="surName" SortExpression="surName" />
                <asp:BoundField DataField="birthDate" HeaderText="birthDate" SortExpression="birthDate" />
                <asp:BoundField DataField="skill" HeaderText="skill" SortExpression="skill" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="isItWorking" HeaderText="isItWorking" SortExpression="isItWorking" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                <asp:BoundField DataField="socialMedya" HeaderText="socialMedya" SortExpression="socialMedya" />
                <asp:BoundField DataField="e_mail" HeaderText="e_mail" SortExpression="e_mail" />
                <asp:BoundField DataField="projes" HeaderText="projes" SortExpression="projes" />
                <asp:BoundField DataField="pNumber" HeaderText="pNumber" SortExpression="pNumber" />
                <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="resim/{0}" HeaderText="Image">
                </asp:ImageField>
              
            </Columns>

        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="listUser" TypeName="internetProgramciligiFinal.metotlar" DataObjectTypeName="internetProgramciligiFinal.UserData" DeleteMethod="deleteUser" UpdateMethod="UpdateUser"></asp:ObjectDataSource>
        <br />
        <asp:Button class="container" ID="btn_back" runat="server" Text="Girişe Dön" OnClick="btn_back_Click" Width="1138px" />
    </form>
</body>
</html>
