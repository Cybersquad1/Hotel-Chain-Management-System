<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="updatestaff.aspx.cs" Inherits="updatestaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            font-size: xx-large;
            color: #FFFFFF;
            background-color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p class="style8" 
        style="width: 400px; height: 43px; background-image: none;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Update Staff Details</p>
    <table cellspacing="7" class="style2" 
        style="width: 391px; height: 202px; background-image: none;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Branch-Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="employee Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Employee Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Designation"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Contact-no."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add" Width="79px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Delete" 
                    Width="72px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Update" Width="70px" 
                    onclick="Button3_Click" />
            &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink12" runat="server" 
                    NavigateUrl="~/login/adminhome.aspx">Back</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>


