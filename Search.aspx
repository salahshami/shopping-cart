<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="MyProject.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=SQLNCLI11;Data Source=(localdb)\Projects;Integrated Security=SSPI;Initial Catalog=&quot;C:\USERS\SALAH\DOWNLOADS\ONLINE SHOPPING CART ASP.NET WEBFORM\C#\MYPROJECT\APP_DATA\SHOPING.MDF&quot;" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [completeCart] WHERE ([brand] LIKE '%' + ? + '%')">
            <selectparameters>
              <asp:controlparameter name="brand" ControlID="TextBox1"  PropertyName="Text" Type="String"/>
                
          </selectparameters>
        </asp:SqlDataSource>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
