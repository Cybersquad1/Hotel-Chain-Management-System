<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="room.aspx.cs" Inherits="room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            font-size: xx-large;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p style="border: thin outset #800000; width: 400px; background-color: #CCFFCC; font-style: oblique; background-image: url('images/Apple_GLitter_Widescreen_by_invaderchciken.jpg');" align="center" 
        class="style8">
        Update Room Details<table class="style2" 
        style="background-image: url('images/Great Collection HD Wallpapers 1024 X 768 (87).jpg')">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Branch_ID" Width="150px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Room NO." Width="150px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Room Type" Width="150px"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Double</asp:ListItem>
                    <asp:ListItem>Triple</asp:ListItem>
                    <asp:ListItem>Quadruple</asp:ListItem>
                    <asp:ListItem>Suites</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Status" Width="150px"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" Height="20px" Width="107px">
                    <asp:ListItem>Booked</asp:ListItem>
                    <asp:ListItem>Vacent</asp:ListItem>
                    <asp:ListItem>Unused</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Italic="True" Font-Size="15pt" 
                    Text="Rent" Width="150px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Add" Width="69px" 
                    onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Delete" Width="63px" 
                    onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Update" Width="63px" 
                    onclick="Button3_Click" />
                <br />
                <br />
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </p>
    <br />
    </asp:Content>


