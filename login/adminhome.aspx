<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            font-size: xx-large;
            color: #990000;
            background-color: #FFFFCC;
        }
        .style10
        {
            color: #990000;
            background-color: #FFFFCC;
        }
        .style12
    {
        width: 87px;
        height: 34px;
    }
        .style13
        {
            width: 87px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p style="width: 300px" class="style9">
        Admin Home</p>
    <table class="style2" style="width: 260%; background-color: #00FFCC;" 
        cellspacing="10" >
        <tr>
            <td class="style13">
               <asp:HyperLink ID="HyperLink12" runat="server" Font-Size="15pt" Width="150px" 
                    CssClass="style10" NavigateUrl="~/login/changepass.aspx">Change Password</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style13">
                <asp:HyperLink ID="HyperLink8" runat="server" Font-Size="15pt" 
                    CssClass="style10" NavigateUrl="~/login/Default2.aspx">Staff Info</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style13">
                <asp:HyperLink ID="HyperLink9" runat="server" Font-Size="15pt" Width="150px" 
                    CssClass="style10" NavigateUrl="~/login/updatebranch.aspx">Add a Branch</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:HyperLink ID="HyperLink10" runat="server" Font-Size="15pt" Width="150px" 
                    CssClass="style10" NavigateUrl="~/login/Default2.aspx">Room&#39;s Status</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


