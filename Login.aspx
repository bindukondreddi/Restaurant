<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Restaurant.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function Register() {
            window.location.href = 'Registration.aspx';
            return false;
        }
    </script>
    <style type="text/css">
        .visisbleLable{
            visibility:hidden;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
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
                                                            <img alt="BDS image" src="Images/fooddelivery.jpg" width="252" style="height: 166px" />
                                                        </td>
                                                        <td valign="top" width="12" colspan="2" rowspan="4"></td>
                                                        <td valign="top">
                                                            <table id="Table5" cellspacing="0" cellpadding="0" width="456" border="0">
                                                                <tr>
                                                                    <td class="HomePageIntro" colspan="2">Welcome to our Restaurant Portal. To login enter your user name and password and press submit.
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
                                                                    <td class="loginLables" width="120">Email Id :
                                                                    </td>
                                                                    <td class="loginInputs">
                                                                        <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
                                                                    </td>
                                                                    <td valign="top" width="180" align="left" rowspan="3">
                                                                        <p>
                                                                            &nbsp;<asp:RequiredFieldValidator ID="rfvUserID" runat="server" ControlToValidate="txtUserId"
                                                                                ErrorMessage="Enter email id" CssClass="ErrorMessage"></asp:RequiredFieldValidator><br />
                                                                            <asp:CustomValidator ID="cvLogin" runat="server" ErrorMessage="Invalid Email Id or Password"
                                                                                Display="Dynamic" CssClass="ErrorMessage"></asp:CustomValidator><br />
                                                                            &nbsp;<asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txtPassword"
                                                                                ErrorMessage="Enter password" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="loginLables" width="120">Password&nbsp;&nbsp; :
                                                                    </td>
                                                                    <td class="loginInputs">
                                                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="152px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="loginInputs"></td>
                                                                    <td class="loginInputs">
                                                                        <asp:ImageButton AlternateText="Submit" ID="Imglogin" runat="server" ImageUrl="~/Images/submitArrow.gif"
                                                                            BorderWidth="0px" OnClick="Imglogin_Click"></asp:ImageButton>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3" align="center" class="ErrorMessage">
                                                                        <asp:Label ID="lblError" runat="server" Text="Invalid Credentials" CssClass="visisbleLable"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <table id="Table6" cellspacing="0" cellpadding="0" width="342" border="0">
                                                                <tr>
                                                                    <td width="100">
                                                                        <asp:LinkButton ID="hypRegForm" runat="server" CssClass="bodyLinks" OnClientClick="javascript:return Register();">New User</asp:LinkButton>
                                                                    </td>
                                                                    <td width="100">
                                                                        <asp:LinkButton ID="hypForPwd" runat="server" CssClass="bodyLinks" OnClientClick="javascript:return ForgotPassword();">Forgot Password</asp:LinkButton>
                                                                    </td>
                                                                    <td align="right">
                                                                        <span class="bodyText">Trouble Signing In? </span>
                                                                        <asp:LinkButton ID="HypAdmin" runat="server" CssClass="bodyLinks" OnClientClick="javascript:return ContactAdmin();"
                                                                            Text="Contact Administrator"></asp:LinkButton>
                                                                    </td>
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