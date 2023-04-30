<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterMain.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="FinalProject.Main.AdminPanel" %>

<asp:Content ID="ContentAdminPanel" ContentPlaceHolderID="RenderBody" runat="server">
    <!-- SCHEDULE -->
    <section class="" style="margin-top: 188px; margin-left: 0px" id="admin">
        <div class="">

            <div class="col-lg-12 col-12 text-center">

                <h2 class="text-dark" data-aos="fade-up" data-aos-delay="200">Pump House Members</h2>
            </div>

            <form runat="server">
                <div class="col-lg-12 py-5 col-md-12 col-12">
                    <asp:GridView data-aos="fade-up" data-aos-delay="300" HeaderStyle-CssClass="text-danger" HeaderStyle-Height="50" CssClass="text-center schedule-table" runat="server" ID="grdMembers" AutoGenerateColumns="false"
                        OnRowCancelingEdit="grdMembers_RowCancelingEdit"
                        OnRowDeleting="grdMembers_RowDeleting" OnRowEditing="grdMembers_RowEditing"
                        OnRowUpdating="grdMembers_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="ID" ItemStyle-CssClass="px-4 py-2">
                                <ItemTemplate>
                                    <asp:Label CssClass="text-white" ID="lblID" runat="server" Text='<%#Eval("MemberID")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            

                            <asp:BoundField ItemStyle-Width="100" ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="FirstName" HeaderText="First Name" />
                            <asp:BoundField ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="LastName" HeaderText="Last Name" />
                            <asp:BoundField ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="Email" HeaderText="Email" />
                            <asp:BoundField ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="Phone" HeaderText="Phone" />
                            <asp:BoundField ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="Gender" HeaderText="Gender" />
                            <asp:BoundField ItemStyle-Width="100" ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="Weight" HeaderText="Weight" />
                            <asp:BoundField ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="Height" HeaderText="Height" />
                            <asp:BoundField ItemStyle-Width="100" ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="BirthYear" HeaderText="Birth Year" />
                            <asp:BoundField ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="JoinDate" HeaderText="Join Date" />
                            <asp:BoundField ItemStyle-Width="100" ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="TrainerID" HeaderText="TrainerID" />
                            <asp:BoundField ItemStyle-Width="100" ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="TypeID" HeaderText="TypeID" />
                            <asp:CommandField ItemStyle-CssClass="px-4 py-2" ItemStyle-ForeColor="#009933" ShowEditButton="true" />
                            <asp:CommandField ItemStyle-CssClass="px-4 py-2" ItemStyle-ForeColor="#cc0000" ShowDeleteButton="true" />
                        </Columns>
                    </asp:GridView>
                </div>

                <div class="col-lg-12 col-12 text-center mt-5">

                    <h2 class="text-dark" data-aos="fade-up" data-aos-delay="200">Contact</h2>
                </div>
                <div class="py-5 col-md-12 col-12" style="margin-left: 220px; max-width: 1220px">
                    <asp:GridView data-aos="fade-up" data-aos-delay="300" HeaderStyle-CssClass=" text-danger" CssClass=" text-center" runat="server" ID="grdMessages" AutoGenerateColumns="false"
                        OnRowDeleting="grdMessages_RowDeleting">
                        <Columns>
                            <asp:TemplateField HeaderText="ID" ItemStyle-CssClass="px-4 py-2">
                                <ItemTemplate>
                                    <asp:Label ID="lblID" runat="server" Text='<%#Eval("MessageID")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="FullName" HeaderText="Full Name" />
                            <asp:BoundField ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="Email" HeaderText="Email" />
                            <asp:BoundField ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="Subject" HeaderText="Subject" />
                            <asp:BoundField ItemStyle-Width="300" ItemStyle-CssClass="px-4 py-2 text-secondary" DataField="Message" HeaderText="Message" />

                            <asp:CommandField ItemStyle-CssClass="px-4 py-2" ItemStyle-ForeColor="#cc0000" ShowDeleteButton="true" />
                        </Columns>
                    </asp:GridView>
                </div>

                <div style="height: 80px"></div>
            </form>
        </div>
    </section>
</asp:Content>
