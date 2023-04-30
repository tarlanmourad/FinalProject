<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterMain.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalProject.Main.Home" %>

<asp:Content ID="ContentHome" ContentPlaceHolderID="RenderBody" runat="server">
    <!-- HERO -->
    <section class="hero d-flex flex-column justify-content-center align-items-center" id="home">

        <div class="bg-overlay"></div>

        <div class="container">
            <div class="row">

                <div class="col-lg-8 col-md-10 mx-auto col-12">
                    <div class="hero-text mt-5 text-center">

                        <h6 data-aos="fade-up" data-aos-delay="300">New way to build a healthy lifestyle!</h6>

                        <h1 class="text-white" data-aos="fade-up" data-aos-delay="500">Upgrade your body at <span class="pl-4">Pump House</span></h1>

                        <a href="#feature" class="btn custom-btn mt-3" data-aos="fade-up" data-aos-delay="600">Get started</a>

                        <a href="/Main/About.aspx" class="btn custom-btn bordered mt-3" data-aos="fade-up" data-aos-delay="700">learn more</a>

                    </div>
                </div>

            </div>
        </div>
    </section>


    <section class="feature" id="feature">
        <div class="container">
            <div class="row">

                <div class="d-flex flex-column justify-content-center ml-lg-auto mr-lg-5 col-lg-5 col-md-6 col-12">
                    <h2 class="mb-3" data-aos="fade-up">New to the gymso?</h2>

                    <h6 class="mb-4" data-aos="fade-up">Your membership is up to 2 months FREE ($62.50 per month)</h6>

                    <p data-aos="fade-up" data-aos-delay="200">Welcome! We are Pump House. Let's build your body together! Join us and enjoy!</p>

                    <a href="/Main/Register.aspx" class="btn member-btn bg-color mt-3" data-aos="fade-up" data-aos-delay="300">Become a member today</a>
                </div>

                <div class="mr-lg-auto mt-3 col-lg-4 col-md-6 col-12">
                    <div class="about-working-hours">
                        <div>

                            <h2 class="mb-4" data-aos="fade-up" data-aos-delay="500">Working hours</h2>

                            <strong class="d-block text-dark" data-aos="fade-up" data-aos-delay="600">Sunday : Closed</strong>

                            <strong class="mt-3 d-block text-dark" data-aos="fade-up" data-aos-delay="700">Monday - Friday</strong>

                            <p data-aos="fade-up" data-aos-delay="800">7:00 AM - 10:00 PM</p>

                            <strong class="mt-3 d-block text-dark" data-aos="fade-up" data-aos-delay="700">Saturday</strong>

                            <p data-aos="fade-up" data-aos-delay="800">6:00 AM - 4:00 PM</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
</asp:Content>
