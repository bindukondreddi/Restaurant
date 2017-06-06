<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Restaurant.Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table height="336" cellspacing="0" cellpadding="0" align="center" width="100%" border="0"
            ms_2d_layout="TRUE">
            <tr valign="top">
                <td>
                    <table id="Table1" cellspacing="0" align="center" cellpadding="0" border="0"
                        width="100%">
                        <tr>
                            <td valign="middle">
                                <table id="Table3" cellspacing="0" align="center" cellpadding="0" border="0">
                                    <tr>
                                        <td width="22"></td>
                                        <td valign="top">
                                            <table id="Table4" cellspacing="0" align="center" cellpadding="0" width="100%" border="0">
                                                <tr>
                                                    <td valign="top" rowspan="4">
                                                        <img alt="BDS image" src="Images/winter-restaurantweek.jpg" width="252" style="height: 166px" />
                                                    </td>
                                                    <td valign="top" width="12" colspan="2" rowspan="4"></td>
                                                    <td valign="top">
                                                        <table id="Table5" cellspacing="0" cellpadding="0" width="456" border="0">
                                                            <tr>
                                                                <td class="HomePageIntro" colspan="2">Kindly fill in the below details to Register
                                                                </td>
                                                                <td width="115">&nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2"></td>
                                                            </tr>
                                                        </table>
                                                        <table cellspacing="0" cellpadding="0" width="456" border="0">
                                                            <tr>
                                                                <td>First name</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtFN" runat="server"></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Last name</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtLN" runat="server"></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Date of Birth</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtDoB" onkeypress="return false;" runat="server"></asp:TextBox><asp:CalendarExtender ID="calExtender" runat="server" Format="dd/MM/yyyy" TargetControlID="txtDoB"></asp:CalendarExtender>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Email Id</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtEm" runat="server"></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Password</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="loginInputs"></td>
                                                                <td class="loginInputs">
                                                                    <asp:ImageButton AlternateText="Submit" ID="Imglogin" runat="server" ImageUrl="~/Images/submitArrow.gif"
                                                                        BorderWidth="0px" OnClick="Imglogin_Click"></asp:ImageButton>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3" align="center" class="ErrorMessage"></td>
                                                            </tr>
                                                        </table>
                                                        <table id="Table6" cellspacing="0" cellpadding="0" width="342" border="0">
                                                            <tr>
                                                                <td width="100"></td>
                                                                <td width="100"></td>
                                                                <td align="right"></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="12"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
