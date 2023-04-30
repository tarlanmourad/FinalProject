<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterMain.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FinalProject.Main.About" %>

<asp:Content ID="ContentAbout" ContentPlaceHolderID="RenderBody" runat="server">
    <!-- HERO -->
    <section class="hero d-flex flex-column justify-content-center align-items-center" id="home">

        <div class="bg-overlay"></div>

        <div class="container">
            <div class="row">

                <div class="col-lg-8 col-md-10 mx-auto col-12">
                    <div class="hero-text mt-5 text-center">

                        <h6 data-aos="fade-up" data-aos-delay="300">New way to build a healthy lifestyle!</h6>

                        <h1 class="text-white" data-aos="fade-up" data-aos-delay="500">Upgrade your body at <span class="pl-4">Pump House</span></h1>

                        <a href="#about" class="btn custom-btn bordered mt-3" data-aos="fade-up" data-aos-delay="700">learn more</a>

                    </div>
                </div>

            </div>
        </div>
    </section>




    <!-- ABOUT -->
    <section class="about section" id="about">
        <div class="container">
            <div class="row">

                <div class="mt-lg-5 mb-lg-0 mb-4 col-lg-5 col-md-10 mx-auto col-12">
                    <h2 class="mb-4" data-aos="fade-up" data-aos-delay="300">Hello, we are Pump House</h2>

                    <p data-aos="fade-up" data-aos-delay="400">Welcome to Pump House. You can registrate to our gym and be trained by trainers. They have experience of many years. Let's do It together.</p>

                    <p data-aos="fade-up" data-aos-delay="500">Wesley Vissers and Jay Cutler are the creators of Pump House. They are world-known sportmen.</p>

                </div>

                <div class="ml-lg-auto col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="700">
                    <div class="team-thumb">
                        <img src="../Images/Main/wesley.jpg" class="img-fluid" alt="Trainer">

                        <div class="team-info d-flex flex-column">

                            <h3>W. Vissers</h3>
                            <span>Co-Founder</span>

                            <ul class="social-icon mt-3">
                                <li><a href="https://www.linkedin.com/in/tarlan-muradli-3aba37254" class="fa fa-linkedin" target="_blank"></a></li>
                                <li><a href="https://instagram.com/t__mourad?igshid=YmMyMTA2M2Y=" class="fa fa-instagram" target="_blank"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="mr-lg-auto mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="800">
                    <div class="team-thumb">
                        <img src="../Images/Main/jay.jpg" class="img-fluid" alt="Trainer">

                        <div class="team-info d-flex flex-column">

                            <h3>Jay Cutler</h3>
                            <span>CEO</span>

                            <ul class="social-icon mt-3">
                                <li><a href="https://www.linkedin.com/in/tarlan-muradli-3aba37254" class="fa fa-linkedin" target="_blank"></a></li>
                                <li><a href="https://instagram.com/t__mourad?igshid=YmMyMTA2M2Y=" class="fa fa-instagram" target="_blank"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- CLASS -->
    <section class="class section" id="class">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12 text-center mb-5">
                    <h6 data-aos="fade-up">Get A Perfect Body</h6>
                    <h2 data-aos="fade-up" data-aos-delay="200">Our Training Classes</h2>
                </div>

                <form id="id" runat="server">
                    <asp:DataList RepeatColumns="2" CellPadding="20" ID="dtListAbout" runat="server">
                        <ItemTemplate>
                            <div class="card" data-aos="fade-up" data-aos-delay="400">
                                <div class="class-thumb">
                                    <asp:Image CssClass="img-fluid" ImageUrl='<%#Eval("ImagePath")%>' runat="server" />
                                    <div class="class-info">
                                        <h3 class="mb-1"><%#Eval("ClassName")%></h3>

                                        <span><strong>Trained by</strong> - <%#Eval("FullName")%></span>

                                        <span class="class-price">$<%#Eval("ClassAmount")%></span>

                                        <p class="mt-3"><%#Eval("Description")%></p>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </form>
            </div>
        </div>
    </section>
</asp:Content>
