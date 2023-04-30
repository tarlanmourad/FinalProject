<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterMain.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FinalProject.Main.Contact" %>

<asp:Content ID="ContentContact" ContentPlaceHolderID="RenderBody" runat="server">
    <!-- HERO -->
    <section class="hero d-flex flex-column justify-content-center align-items-center" id="home">

        <div class="bg-overlay"></div>

        <div class="container">
            <div class="row">

                <div class="col-lg-8 col-md-10 mx-auto col-12">
                    <div class="hero-text mt-5 text-center">

                        <h6 data-aos="fade-up" data-aos-delay="300">New way to build a healthy lifestyle!</h6>

                        <h1 class="text-white" data-aos="fade-up" data-aos-delay="500">Upgrade your body at <span class="pl-4">Pump House</span></h1>

                    </div>
                </div>

            </div>
        </div>
    </section>




    <!-- CONTACT -->
    <section class="contact section" id="contact">
        <div class="container">
            <div class="row">
                <div class="ml-auto col-lg-5 col-md-6 col-12">
                    <h2 class="mb-4 pb-2" data-aos="fade-up" data-aos-delay="200">Feel free to ask anything</h2>

                    <form runat="server" class="contact-form webform" data-aos="fade-up" data-aos-delay="400" role="form">
                        <asp:TextBox ID="txtFullName" runat="server" class="form-control" placeholder="Full Name"></asp:TextBox>

                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>

                        <asp:TextBox ID="txtSubject" runat="server" class="form-control" placeholder="Subject"></asp:TextBox>

                        <asp:TextBox ID="txtMessage" TextMode="MultiLine" runat="server" class="form-control" Rows="5" placeholder="Message"></asp:TextBox>

                        <asp:Button runat="server" CssClass="form-control submitButton" ID="submitButton" Text="Send Message" OnClick="submitButton_Click" />

                        <asp:Label Visible="false" CssClass="alert d-block alert-warning" ID="lblWarning" runat="server"></asp:Label>
                        <asp:Label Visible="false" CssClass="alert d-block alert-success" ID="lblSuccess" runat="server"></asp:Label>
                    </form>
                </div>

                <div class="mx-auto mt-4 mt-lg-0 mt-md-0 col-lg-5 col-md-6 col-12">
                    <h2 class="mb-4" data-aos="fade-up" data-aos-delay="600">Where you can <span>find us</span></h2>

                    <p data-aos="fade-up" data-aos-delay="800"><i class="fa fa-map-marker mr-1"></i>Mir Jalal 147 - Baku, Azerbaijan</p>

                    <div class="google-map" data-aos="fade-up" data-aos-delay="900">
                        <iframe src="https://maps.google.com/maps?q=mir%20jalal%20147&t=&z=13&ie=UTF8&iwloc=&output=embed" width="1920" height="340" frameborder="0" style="border: 0;" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
