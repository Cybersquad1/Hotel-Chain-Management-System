<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table class="style2">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="15pt" Text="Branch" 
                    Width="130px" style="color: #800000"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="brname" DataValueField="brname">
                    <asp:ListItem>The Gateway Hotel Goa</asp:ListItem>
                    <asp:ListItem>The Gateway Hotel Mumbai</asp:ListItem>
                    <asp:ListItem>The Gateway Hotel Lucknow</asp:ListItem>
                    <asp:ListItem>The Gateway Hotel Patna</asp:ListItem>
                    <asp:ListItem>The Gateway Hotel Jaipur</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConn %>" 
                    SelectCommand="SELECT DISTINCT [brname] FROM [branch]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    style="color: #993300; font-weight: 700;">
                    <asp:ListItem>Room&#39;s Status</asp:ListItem>
                    <asp:ListItem>Staff Info</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="17pt" 
                    onclick="LinkButton3_Click">Next</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>


