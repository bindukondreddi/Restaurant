<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Restaurant.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/OfferDashBoardMenu.css" rel="stylesheet" />
    <script type="text/javascript">
        function LogOut() {
            window.location.href = 'Login.aspx';
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellspacing="0" width="100%" cellpadding="0" border="0">
        <tr>
            <td valign="top">
                <table cellspacing="0" cellpadding="0" width="100%" border="0" runat="server" id="LogoTable">
                    <tr>
                        <td>
                            <ul class="menu">
                                <li><a id="aDashboard" href="#" class="active" onclick="javascript:RedirectToOfferDashboard();"><span>&nbsp;Home&nbsp;</span></a></li>
                                <li><a href="PrepareOffer.aspx"><span>&nbsp;Menu&nbsp;</span></a></li>
                                <li><a id="aCopyOffer" href="#" onclick="SelectedforCopy();"><span>&nbsp;Order Online&nbsp;</span></a></li>
                                <li><a id="aCopyOffer" href="#" onclick="SelectedforCopy();"><span>&nbsp;Table Reservation&nbsp;</span></a></li>
                                <li><a href="#" onclick="javascript:ScenarioDialog()"><span>&nbsp;Store Location&nbsp;</span></a></li>
                                <li><a href="#" onclick="javascript:openModal('\\NETWEBAPP\\Reports\\NameChangeERPForm.aspx')">
                                    <span>&nbsp;Contact Us&nbsp;</span></a></li>
                                <%--  <li><a href="#openModal"><span>&nbsp;Name Change&nbsp;</span></a> <div id="openModal" class="modalDialog"> </div></li>--%>
                                <%--  <li><a href="/contact"><span>&nbsp;Change Password&nbsp;</span></a></li>--%>
                                <li><a href="#" onclick="javascript:LogOut()"><span>&nbsp;Log Out&nbsp;</span></a></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" height="84px" width="100%">
                            <asp:Image Width="100%" ID="imgLogo" ImageUrl="~/Images/welcome.jpeg" runat="server" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
