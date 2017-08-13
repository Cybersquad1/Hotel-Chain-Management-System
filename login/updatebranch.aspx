<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="updatebranch.aspx.cs" Inherits="addbranch" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
        }
        .style12
        {
            width: 85px;
        }
        .style13
        {
            color: #FFFFCC;
            background-color: #800000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
        Text="View  Image" />
    <br />
    <asp:Label ID="Label7" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Image ID="Image4" runat="server" Height="200px" Width="200px" />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p style="width: 268px; font-size: xx-large;">
        <span class="style13">Update a Branch</span></p>
    <table class="style2" 
    style="width: 398%; background-image: url('images/Great Collection HD Wallpapers 1024 X 768 (87).jpg');" 
    cellpadding="7" cellspacing="7">
        <tr>
            <td class="style12">
                <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Branch Id" Width="120px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12" width="110">
                <asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Branch Name" Width="137px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" 
                    style="margin-top: 0px; margin-left: 0px;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label3" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Adress"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label6" runat="server" Font-Italic="True" Font-Size="14pt" 
                    Text="Contact No." Width="100px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label5" runat="server"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                </td>
        </tr>
        <tr>
            <td class="style11" colspan="2">

                &nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Height="22px" onclick="Button4_Click" 
                    Text="Add" Width="55px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="delete" 
                    Width="58px" onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="modify" onclick="Button3_Click" 
                    style="height: 26px" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink7" runat="server" Font-Overline="False" 
                    Font-Size="15pt" NavigateUrl="~/login/room.aspx">Add Room Details</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink12" runat="server" ForeColor="Black" 
                    NavigateUrl="~/login/adminhome.aspx" style="font-weight: 700">Back</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>


