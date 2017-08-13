<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 425px;
        }
        .style16
        {
            width: 411px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    &nbsp;Welcome to The Royal Paradise Hotels &amp; Resorts. We have well furnished and 
        luxirous rooms which have eye catching interior decoration for guests visiting 
        our hotels. All types of rooms are available satisfying your need, weather you 
        visit alone, with your spouce, friend, or family. Accordingly we provide 5 types 
        of rooms:<ul>
        <li>Single rooms: For single travellers. In some&nbsp; hotels, a single room is 
            actually the same as a double room.</li>
        <li>Double rooms: For two travellers sleeping in the same bed. Twin rooms have two 
            separate single beds.</li>
        <li>Triple rooms: Having either three separate beds, or a double bed plus a single 
            bed.</li>
        <li>Quads rooms: Designed for 4 people or more.</li>
        <li>Suites: Complete apartments with multiple rooms, generally intended for longer 
            stays . </li>
    </ul>
    <p>
        We provide 2 types of suites:<ul>
        <li>Honeymoon suites: For newly married couples coming for their honeymoon.</li>
        <li>Presedential suites: For V.I.Ps and special guests visiting our hotels.</li>
    </ul>
    <p>
        Have a view of our rooms and suites.</p>
    <p>
    <br />
    <table class="style5">
        <tr>
            <td bgcolor="#FFFF66">
                <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Black" 
                    onclick="LinkButton3_Click">Single Rooms</asp:LinkButton>
            </td>
            <td bgcolor="#FFCC99">
                <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Black" 
                    onclick="LinkButton4_Click">Double Rooms</asp:LinkButton>
            </td>
            <td bgcolor="#FFCCCC">
                <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="Black" 
                    onclick="LinkButton5_Click">Triple Rooms</asp:LinkButton>
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server" Height="481px" Visible="False" 
        Width="833px" BackColor="#FFFF99">
        <asp:Image ID="Image4" runat="server" Height="155px" 
            ImageUrl="~/images/single/91570_377309_01.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image5" runat="server" Height="155px" 
            ImageUrl="~/images/single/einzelzimmer.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image6" runat="server" Height="155px" 
            ImageUrl="~/images/single/einzelzimmer01.jpg" Width="260px" />
        <br />
        <asp:Image ID="Image7" runat="server" Height="155px" 
            ImageUrl="~/images/single/ford-hotel-interior7.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image8" runat="server" Height="155px" Width="260px" 
            ImageUrl="~/images/single/LasVegas_OneBedroomCityView_Opt1_Header.jpg" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image9" runat="server" Height="155px" Width="260px" 
            ImageUrl="~/images/single/room_single.jpg" />
        <br />
        <asp:Image ID="Image10" runat="server" Height="155px" 
            ImageUrl="~/images/single/rooms1_b.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image11" runat="server" Height="155px" 
            ImageUrl="~/images/single/single-room.png" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image12" runat="server" Height="155px" 
            ImageUrl="~/images/single/single_room_01.jpg" Width="260px" />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Height="485px" Visible="False" 
        Width="834px" BackColor="#FFCC99">
        <asp:Image ID="Image13" runat="server" Height="155px" 
            ImageUrl="~/images/double/c_dbl_dbl_rm.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image14" runat="server" Height="155px" 
            ImageUrl="~/images/double/double-room.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image15" runat="server" Height="155px" 
            ImageUrl="~/images/double/guest-rooms-single-room-with-french-bed.jpg" 
            Width="260px" />
        <br />
        <asp:Image ID="Image16" runat="server" Height="155px" 
            ImageUrl="~/images/double/hotels-suites.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image17" runat="server" Height="155px" 
            ImageUrl="~/images/double/Hotels_Interior_Design+(2).jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image18" runat="server" Height="155px" 
            ImageUrl="~/images/double/single-room.jpg" Width="260px" />
        <br />
        <asp:Image ID="Image19" runat="server" Height="155px" 
            ImageUrl="~/images/double/single-room_3.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image20" runat="server" Height="155px" 
            ImageUrl="~/images/double/slider_tripla3.jpg" Width="360px" />
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Height="488px" Visible="False" 
        Width="834px" BackColor="#FFCCCC">
        <asp:Image ID="Image21" runat="server" Height="155px" 
            ImageUrl="~/images/tripple/guest-rooms-triple-room.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image22" runat="server" Height="155px" 
            ImageUrl="~/images/tripple/hotel-interior-room-luxury-hotel.jpg" 
            Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image23" runat="server" Height="155px" 
            ImageUrl="~/images/tripple/page_tripleroom_roomsImage1.jpg" Width="260px" />
        <br />
        <asp:Image ID="Image24" runat="server" Height="155px" 
            ImageUrl="~/images/tripple/quad_grd.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image25" runat="server" Height="155px" 
            ImageUrl="~/images/tripple/res_1336509956_triple-room.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image26" runat="server" Height="155px" 
            ImageUrl="~/images/tripple/Ritz-8.jpg" Width="260px" />
        <br />
        <asp:Image ID="Image27" runat="server" Height="155px" 
            ImageUrl="~/images/tripple/Room 3 (6).JPG" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image28" runat="server" Height="155px" 
            ImageUrl="~/images/tripple/room_triple2.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image29" runat="server" Height="155px" 
            ImageUrl="~/images/tripple/royal-empire-hotel-triple.jpg" Width="260px" />
    </asp:Panel>
        <br />
    <table class="style5" style="width: 63%">
        <tr>
            <td bgcolor="#CCFF99" class="style16">
                <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="Black" 
                    onclick="LinkButton6_Click">Quadruple Rooms</asp:LinkButton>
            </td>
            <td bgcolor="#CCFFFF">
                <asp:LinkButton ID="LinkButton7" runat="server" ForeColor="Black" 
                    onclick="LinkButton7_Click">Suites</asp:LinkButton>
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel5" runat="server" BackColor="#CCFF99" Height="480px" 
        Visible="False" Width="838px">
        <asp:Image ID="Image30" runat="server" Height="155px" 
            ImageUrl="~/images/quad/CA Quadruple Room.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image31" runat="server" Height="155px" 
            ImageUrl="~/images/quad/camera4.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image32" runat="server" Height="155px" 
            ImageUrl="~/images/quad/chetwynd_triple_room_o.jpg" Width="260px" />
        <br />
        <asp:Image ID="Image33" runat="server" Height="155px" 
            ImageUrl="~/images/quad/guest-rooms-double-room-with-twin-bed.jpg" 
            Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image34" runat="server" Height="155px" 
            ImageUrl="~/images/quad/hotel-11388-quadruple room.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image35" runat="server" Height="155px" 
            ImageUrl="~/images/quad/img_rooms_big_1.jpg" Width="260px" />
        <br />
        <asp:Image ID="Image36" runat="server" Height="155px" 
            ImageUrl="~/images/quad/Presidential_Suite_savoy.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image37" runat="server" Height="150px" 
            ImageUrl="~/images/quad/quad.jpg" Width="260px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image38" runat="server" Height="155px" 
            ImageUrl="~/images/quad/quadruple-room.jpg" Width="260px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server" BackColor="#CCFFFF" Height="483px" 
        Visible="False" Width="836px">
        <asp:Image ID="Image39" runat="server" Height="155px" Width="260px" 
            ImageUrl="~/images/suites/SetWidth1300-Presidential-Suite.jpg" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image40" runat="server" Height="155px" Width="260px" 
            ImageUrl="~/images/suites/SuiteRoyalLivingroom.jpg" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image41" runat="server" Height="155px" Width="260px" 
            ImageUrl="~/images/suites/colorfull-contemporary-hotel-room-interior-design-ideas.jpg" />
        <br />
        <asp:Image ID="Image42" runat="server" Height="155px" Width="260px" 
            ImageUrl="~/images/suites/dlx_dou_max.jpg" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image43" runat="server" Height="155px" Width="260px" 
            ImageUrl="~/images/suites/Hotel Roomsbellagio_ste.jpg" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image44" runat="server" Height="155px" Width="260px" 
            ImageUrl="~/images/suites/Hotels_Interior_Design+(3).jpg" />
        <br />
        <asp:Image ID="Image45" runat="server" Height="155px" Width="260px" 
            ImageUrl="~/images/suites/K1SFP1 -Presidential Princess Diana Suite.jpg" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image46" runat="server" Height="155px" Width="260px" 
            ImageUrl="~/images/suites/londonpenthousesuite.jpg" />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image47" runat="server" Height="155px" Width="260px" 
            ImageUrl="~/images/suites/pres_bedroom.bmp" />
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    </asp:Content>


