<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="addadmin.aspx.cs" Inherits="addadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            font-size: xx-large;
            color: #800000;
            text-align: center;
        }
        .style9
        {
            width: 120px;
        }
    .style10
    {
        height: 34px;
        width: 142px;
    }
    .style11
    {
        width: 120px;
        height: 34px;
    }
    .style12
    {
        width: 142px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p class="style8" 
    style="width: 308px; height: 36px; background-image: url('images/Apple_GLitter_Widescreen_by_invaderchciken.jpg');">
        Add Admin</p>
    <table cellspacing="10" class="style2" 
        style="background-color: #00FFFF; margin-top: 0px;" width="308">
        <tr>
            <td class="style12">
                <asp:Label ID="Label1" runat="server" Font-Size="14pt" style="color: #800000" 
                    Text="Admin Name" Width="150px"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Label ID="Label2" runat="server" Font-Size="14pt" style="color: #800000" 
                    Text="Password" Width="150px"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Label ID="Label3" runat="server" Font-Size="14pt" style="color: #800000" 
                    Text="Confirm Password" Width="150px"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add admin" Width="105px" 
                    style="color: #FFFFFF; background-color: #800000" />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Size="13pt"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>


