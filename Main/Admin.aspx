<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterMain.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FinalProject.Main.Admin" %>

<asp:Content ID="ContentAdmin" ContentPlaceHolderID="RenderBody" runat="server">
    <!-- REGISTER -->
    <section class="about section" id="about">
        <div class="container">
            <form runat="server">
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-8">
                        <h2 class="mb-5" data-aos-delay="200" data-aos="fade-up">Log In As Admin</h2>
                        <div class="" data-aos-delay="400" data-aos="fade-up">


                            <div class="form-group">
                                <asp:Label CssClass="font-weight-bolder" Text="Email" runat="server"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:Label CssClass="font-weight-bolder" Text="Password" runat="server"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                            </div>

                            <%--<div class="form-group">
                                <asp:Label CssClass="font-weight-bolder" Text="Confirm Password" runat="server"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="txtRePassword" TextMode="Password" runat="server"></asp:TextBox>
                            </div>--%>
                        </div>

                        <div>
                            <asp:Label Visible="false" CssClass="alert d-block alert-warning" ID="lblWarning" runat="server"></asp:Label>
                        </div>

                        <div class="row text-center mt-3">
                            <div class="col-4"></div>
                            <div class="col-4">
                                <asp:Button ID="btnSubmit" Text="Submit" CssClass="submitButton form-control" runat="server" OnClick="btnSubmit_Click" />
                            </div>
                            <div class="col-2"></div>
                        </div>
                    </div>
                    <div class="col-4"></div>
                </div>
            </form>
        </div>
    </section>
</asp:Content>
