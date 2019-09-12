<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Searche.aspx.cs" Inherits="MyProject.Searche" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.GridView1{ margin-left:100px;}
#price{ margin-left:100px;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table width="100%"><tr> <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
    

                         </td></tr><tr><td>

    <asp:GridView ID="GridView1" CssClass="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id"  
        EmptyDataText="No Items " 
        onrowdatabound="GridView1_RowDataBound" 
        onrowdeleted="GridView1_RowDeleted" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" 
        >
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="pName" HeaderText="PRODUCT" SortExpression="pName" />
            <asp:BoundField DataField="brand" HeaderText="BRAND" SortExpression="brand" />
            <asp:TemplateField HeaderText="img" SortExpression="img">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("img") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Width="250px" Height="300px" ImageUrl='<%# Bind("img")  %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="quantity" HeaderText="QUANTITY" 
                SortExpression="quantity" />
            <asp:BoundField DataField="price" HeaderText="COST" SortExpression="price" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    </td>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:shopingConnectionString1 %>" SelectCommand="SELECT * FROM [completeCart] WHERE ([brand] LIKE '%' + @brand + '%')" 
       >
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox3" Name="brand" PropertyName="Text" Type="String" />
        </SelectParameters>
      
    </asp:SqlDataSource>
    
    <td> 

   </td> </tr>
    </table>
</asp:Content>
