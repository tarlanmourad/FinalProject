<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterMain.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FinalProject.Main.Register" ValidateRequest="false" %>

<asp:Content ID="ContentRegister" ContentPlaceHolderID="RenderBody" runat="server">
    <!-- HERO -->
    <section class="hero d-flex flex-column justify-content-center align-items-center" id="home">

        <div class="bg-overlay"></div>

        <div class="container">
            <div class="row">

                <div class="col-lg-8 col-md-10 mx-auto col-12">
                    <div class="hero-text mt-5 text-center">

                        <h2 data-aos-delay="200" data-aos="fade-up" style="margin-bottom: 30px">
                            <asp:Label Visible="false" CssClass="text-info" ID="lblSuccess" runat="server"></asp:Label>
                        </h2>

                        <h6 data-aos="fade-up" data-aos-delay="300">New way to build a healthy lifestyle!</h6>

                        <h1 class="text-white" data-aos="fade-up" data-aos-delay="500">Upgrade your body at <span class="pl-4">Pump House</span></h1>

                    </div>
                </div>

            </div>
        </div>
    </section>




    <!-- REGISTER -->
    <section class="about section" id="about">
        <div class="container">
            <form id="frmRegister" runat="server">
                <h2 class="mb-5" data-aos-delay="200" data-aos="fade-up">Build Your Body</h2>
                <div class="row" data-aos-delay="400" data-aos="fade-up">
                    <div class="col-6">
                        <div class="form-group">
                            <asp:Label CssClass="font-weight-bolder" Text="First Name" runat="server"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="txtFirstName" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label CssClass="font-weight-bolder" Text="Last Name" runat="server"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="txtLastName" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label CssClass="font-weight-bolder" Text="Phone" runat="server"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="txtPhone" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label CssClass="font-weight-bolder" Text="Email" runat="server"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label CssClass="font-weight-bolder" Text="Weight" runat="server"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="txtWeight" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label CssClass="font-weight-bolder" Text="Height" runat="server"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="txtHeight" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-6 pl-5">
                        <div class="form-group mb-5">
                            <asp:Label CssClass="font-weight-bolder mb-3 mr-5 d-block" Text="Gender" runat="server"></asp:Label>
                            <asp:RadioButtonList CssClass="ml-4" RepeatColumns="2" ID="rbtlGender" runat="server">
                                <asp:ListItem Text="Male"></asp:ListItem>
                                <asp:ListItem Text="Female"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>

                        <div class="form-group mb-5">
                            <asp:Label CssClass="mr-5 mb-3 font-weight-bolder d-block" Text="Birth Year" runat="server"></asp:Label>
                            <asp:DropDownList CssClass="ml-4 drpYears" ID="drpYears" runat="server">
                                <asp:ListItem Value="-- --" Selected="True" disabled="true"></asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group mb-5 mt-5">
                            <asp:Label Text="Membership Type" CssClass="font-weight-bolder d-block mb-3" runat="server"></asp:Label>
                            <asp:RadioButtonList CssClass="ml-4" ID="chcListType" runat="server"></asp:RadioButtonList>
                        </div>

                        <div class="form-group mb-5">
                            <asp:Label Text="Trainers" CssClass="font-weight-bolder d-block mb-4" runat="server"></asp:Label>
                            <asp:DropDownList CssClass="text-center ml-4 drpYears" ID="drpTrainers" runat="server" AppendDataBoundItems="true">
                                <asp:ListItem Value="--select--" Selected="True" disabled="true"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div style="margin-top: 60px !important">
                            <asp:Label Visible="false" CssClass="alert alert-warning" ID="lblWarning" runat="server"></asp:Label>
                            <%--                            <asp:Label Visible="false" CssClass="alert alert-success" ID="lblSuccess" runat="server"></asp:Label>--%>
                        </div>
                    </div>
                </div>
                <div class="row text-center mt-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="col-4"></div>
                    <div class="col-4">
                        <asp:CheckBox Text="<p class='pl-2'>I agree to the <a data-toggle='modal' data-target='#myModal' href='#'>Terms&Conditions</a></p>" runat="server" ID="signupAgree"></asp:CheckBox>
                        <asp:Button ID="btnSubmit" Text="Submit" CssClass="submitButton form-control" runat="server" OnClick="btnSubmit_Click" />
                    </div>
                    <div class="col-4">
                    </div>
                </div>
            </form>
        </div>
    </section>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">

            <div class="modal-content">
                <div class="modal-header mb-4">

                    <h2 class="modal-title" id="myModalLabel">Terms&Conditions</h2>

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <p><span class="font-weight-bold">1. </span>All memberships are Non-Transferable & Non-Refundable.</p>
                    <p><span class="font-weight-bold">2. </span>All members must be over 16 to avail of facilities and services provided at Goldstone Gym & Fitness.</p>
                    <p><span class="font-weight-bold">3. </span>Membership may be renewed on payment of the prevailing fee and in accordance with the terms and conditions then in force.</p>
                    <p><span class="font-weight-bold">4. </span>By joining the club, members automatically accept and agree to be bound by these conditions of membership.</p>
                    <p><span class="font-weight-bold">5. </span>All members must scan their finger for access to the building on each visit to the club.</p>
                    <p><span class="font-weight-bold">6. </span>The club reserves the right to vary the opening hours as considered necessary for the proper operation of the centre.</p>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
