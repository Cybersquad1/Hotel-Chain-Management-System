<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="location.aspx.cs" Inherits="location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style20
        {
            font-size: 15pt;
            color: #333333;
        }
        .style21
        {
            color: #333333;
        }
        .style22
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <span style="color: rgb(96, 106, 116); font-family: HelveticaNeueLTCom-Bd, Arial, Helvetica; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: uppercase; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">&nbsp; 
        LOCATIONS</span></p>
    <table class="style5">
        <tr>
            <td>
                <asp:Image ID="Image5" runat="server" Height="350px" Width="350px" 
                    ImageUrl="~/images/india_political.jpg" />
            </td>
            <td>
                <span class="style20">THE ROYAL PARADISE HOTELS</span><br class="style21" />
                <br class="style21" />
                <span class="style21">We have 5 branches of The Royal Paradise Hotels ans very 
                soon plan to open new branches all over the map of India and some branches in 
                the most beautiful tourist places across the globe. You can review our available 
                branches in India by surfing the following links.</span><br />
&nbsp;<br />
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="style22" 
                    onclick="LinkButton3_Click">The Royal Paradise Hotel Goa</asp:LinkButton>
                <br />
                <br class="style22" />
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton7" runat="server" CssClass="style22" 
                    onclick="LinkButton7_Click">The Royal Paradise Hotel New Delhi</asp:LinkButton>
            &nbsp;<br />
                <br class="style22" />
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="style22" 
                    onclick="LinkButton4_Click">The Royal Paradise Hotel Mumbai</asp:LinkButton>
                <br class="style22" />
                <br class="style22" />
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" CssClass="style22" 
                    onclick="LinkButton5_Click">The Royal Paradise Hotel Lucknow</asp:LinkButton>
                <br class="style22" />
                <br class="style22" />
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton6" runat="server" CssClass="style22" 
                    onclick="LinkButton6_Click">The Royal Paradise Hotel Patna</asp:LinkButton>
                <br class="style22" />
                <br class="style22" />
                &nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
    <br />
</asp:Content>


