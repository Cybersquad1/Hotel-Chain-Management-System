<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        height: 34px;
    }
        .style8
        {
            font-size: xx-large;
            color: #800000;
        }
        .style9
        {
            height: 32px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    &nbsp;&nbsp;<asp:Panel ID="Panel1" runat="server" Width="410px" 
        BackColor="#FFFFCC" 
        BackImageUrl="~/images/Apple_GLitter_Widescreen_by_invaderchciken.jpg">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <span class="style8">Admin&nbsp;&nbsp; Login</span><br />
        <br />
        <table class="style2" style="width: 116%">
            <tr>
                <td class="style9">
                    &nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Size="13pt" style="color: #800000" 
                        Text="Admin  Name" Font-Italic="True"></asp:Label>
                </td>
                <td class="style9">
                    <asp:TextBox ID="TextBox3" runat="server" Width="189px" Height="21px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Size="13pt" Text="Password" 
                        Font-Italic="True" style="color: #800000"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="182px" 
                        Height="24px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" 
                        onclick="LinkButton3_Click">Forgot Password</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" 
                        onclick="Button1_Click1" Text="Login" Width="61px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink10" runat="server" 
                        NavigateUrl="~/login/addadmin.aspx">Add New Admin</asp:HyperLink>
                </td>
            </tr>
        </table>
    </asp:Panel>
&nbsp;
</asp:Content>


