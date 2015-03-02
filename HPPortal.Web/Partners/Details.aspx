<%@ Page Title="Partner Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="HPPortal.Web.Partners.Details" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="well">

        <div class="row">
            <div class="col-md-offset-1 col-md-1 control-label">
                Partner:

            </div>
            <div class="col-md-2 control-label">

                <asp:Label ID="lblPartner" runat="server"></asp:Label>

            </div>

            <div class="col-md-2 control-label">
                Outlet Type:
            </div>
            <div class="col-md-2 control-label">

                <asp:Label ID="lblOutletType" runat="server"></asp:Label>

            </div>

            <div class="col-md-1 control-label">
                Quarter:
            </div>
            <div class="col-md-2 control-label">

                <asp:Label ID="lblQuater" runat="server"></asp:Label>

            </div>

        </div>
        <div class="row">
            <div class="col-md-offset-1 col-md-1 control-label">
                City:
            </div>
            <div class="col-md-2 control-label">

                <asp:Label ID="lblCity" runat="server"></asp:Label>

            </div>

            <div class="col-md-2 control-label">
                HP Account Manager:
            </div>
            <div class="col-md-2 control-label">

                <asp:Label ID="lblAccountManager" runat="server"></asp:Label>

            </div>


        </div>

    </div>
    <div class="btn-group btn-group-justified" role="group" aria-label="...">
        <div class="btn btn-primary">
            <span style="font-family: HPSimplified_Bd;">Partner Details</span>
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" Text="Strategic Plans" OnClick="btnNavigate_Click" CommandArgument="StrategicPlans/" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" Text="Overview Plans" OnClick="btnNavigate_Click" CommandArgument="OverViewPlans/OverviewPlan.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Target Entry" CommandArgument="Targets/Default.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Primary Sales Entry" CommandArgument="Sales/Default.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Plan and Performance" CommandArgument="Sales/PlanandPerformance.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Open House" CommandArgument="OpenHouse/OpenHouseUI.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Targeted Goals" CommandArgument="TargetedGoals/Default.aspx" />
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Partner Details</h3>
        </div>
        <div class="panel-body">
            <asp:FormView runat="server"
                ItemType="HPPortal.Data.Models.Partner" DataKeyNames="PartnerId"
                SelectMethod="GetItem"
                OnItemCommand="ItemCommand" RenderOuterTable="false">
                <EmptyDataTemplate>
                    Cannot find the Partner with PartnerId <%: Request.QueryString["PartnerId"] %>
                </EmptyDataTemplate>
                <ItemTemplate>
                    <fieldset class="form-horizontal">
                        <legend></legend>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Partner Name</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="PartnerName" ID="PartnerName" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Contact Person</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="ContactPerson" ID="ContactPerson" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Email</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Phone</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="Phone" ID="Phone" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Mobile</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="Mobile" ID="Mobile" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Address</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="Address" ID="Address" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Customer Segments</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="CustomerSegmentsAddressed" ID="CustomerSegmentsAddressed" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Core Business</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="CoreBusiness" ID="CoreBusiness" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Current Brands</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="CurrentBrands" ID="CurrentBrands" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Main Competitors</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="MainCompetitors" ID="MainCompetitors" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Staff Count</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="StaffCount" ID="StaffCount" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Category</span>
                                    <div class="col-md-6">
                                        <%#: Item.PartnerCategory != null ? Item.PartnerCategory.Description : "" %>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">City</span>
                                    <div class="col-md-6">
                                        <%#: Item.City != null ? Item.City.Description : "" %>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Account Manager</span>
                                    <div class="col-md-6">
                                        <%#: Item.User != null ? Item.User.Name : "" %>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Frequency of Engagement</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="FrequencyOfEngagement" ID="FrequencyOfEngagement" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <span class="col-md-5 control-label">Relationship Status</span>
                                    <div class="col-md-6">
                                        <asp:DynamicControl runat="server" DataField="RelationshipStatus" ID="RelationshipStatus" Mode="ReadOnly" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </ItemTemplate>
            </asp:FormView>
        </div>
    </div>
</asp:Content>

