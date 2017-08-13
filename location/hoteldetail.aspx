<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="hoteldetail.aspx.cs" Inherits="hoteldetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style20
        {
            width: 256px;
        }
        .style21
        {
            color: #333333;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" 
        style="font-size: x-large; color: #333333"></asp:Label>
    &nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
    <br />
    <br />
    <table class="style5">
        <tr>
            <td class="style20">
                <asp:Image ID="Image5" runat="server" Height="200px" Width="200px" />
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" CssClass="style21"></asp:Label>
                <br />
                <br />
                Types of rooms:
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="roomtype" HeaderText="roomtype" 
                            SortExpression="roomtype" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConn %>" 
                    SelectCommand="SELECT [roomtype] FROM [roomstype] WHERE ([brid] = @brid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label6" Name="brid" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                Contact Details:
                <asp:Label ID="Label4" runat="server" CssClass="style21"></asp:Label>
                <br />
                <br />
                Address:
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>


