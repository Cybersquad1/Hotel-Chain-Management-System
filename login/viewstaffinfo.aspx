<%@ Page Title="" Language="C#" MasterPageFile="~/login/MasterPage.master" AutoEventWireup="true" CodeFile="viewstaffinfo.aspx.cs" Inherits="staffinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            font-size: medium;
        }
        .style9
        {
            font-size: xx-large;
            text-align: center;
            font-family: "Franklin Gothic Medium Cond";
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <p class="style9" style="width: 400px">
        Staff Infomation</p>
    <p class="style8" style="width: 400px">
        <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="15pt" 
            Text="Branch -Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="brid" DataValueField="brid" 
            AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyConn %>" 
            SelectCommand="SELECT DISTINCT [brid] FROM [staff] ORDER BY [brid]">
        </asp:SqlDataSource>
    </p>
    <p class="style8" style="width: 400px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="empid" HeaderText="empid" SortExpression="empid" />
                <asp:BoundField DataField="empname" HeaderText="empname" 
                    SortExpression="empname" />
                <asp:BoundField DataField="designation" HeaderText="designation" 
                    SortExpression="designation" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                    SortExpression="contact_no" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyConn %>" 
            
            SelectCommand="SELECT [empid], [empname], [designation], [contact_no] FROM [staff] WHERE ([brid] = @brid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="brid" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p class="style8" style="width: 400px">
        <asp:HyperLink ID="HyperLink7" runat="server" style="font-size: medium" 
            NavigateUrl="~/login/updatestaff.aspx">Update Staff Member</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink12" runat="server" 
            NavigateUrl="~/login/adminhome.aspx">Back</asp:HyperLink>
        </p>
</asp:Content>


