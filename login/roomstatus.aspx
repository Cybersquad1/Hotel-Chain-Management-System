<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="roomstatus.aspx.cs" Inherits="roomstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            font-size: xx-large;
            text-align: center;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p class="style8" style="width: 250px">
        Room&#39;s Status</p>
    <p style="width: 250px">
        <asp:Label ID="Label1" runat="server" Text="Branch_ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="brid" DataValueField="brid" 
            Height="16px" Width="116px" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyConn %>" 
            SelectCommand="SELECT DISTINCT [brid] FROM [roomdetails] ORDER BY [brid]">
        </asp:SqlDataSource>
    </p>
    <p style="width: 337px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
             Width="331px">
            <Columns>
                <asp:BoundField DataField="room_no" HeaderText="room_no" 
                    SortExpression="room_no" />
                <asp:BoundField DataField="Room_type" HeaderText="Room_type" 
                    SortExpression="Room_type" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
                <asp:BoundField DataField="rate" HeaderText="rate" 
                    SortExpression="rate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyConn %>" 
            
            SelectCommand="SELECT [room_no], [Room_type], [status], [rate] FROM [roomdetails] WHERE ([brid] = @brid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="brid" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p style="width: 250px">
        <asp:Label ID="Label2" runat="server" Text="Total No. of Rooms"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </p>
    <p style="width: 250px">
        <asp:Label ID="Label4" runat="server" Text="Booked Rooms"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server"></asp:Label>
    </p>
    <p style="width: 250px">
        <asp:Label ID="Label6" runat="server" Text="Vacent Rooms"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server"></asp:Label>
    </p>
    <p style="width: 250px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink7" runat="server" Font-Size="13pt" 
            NavigateUrl="~/login/room.aspx">Update Room Details</asp:HyperLink>
    </p>
</asp:Content>


