﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CompetitiveLandscape.aspx.cs" Inherits="HPPortal.Web.Competitor.CompetitiveLandscape" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>&nbsp;</div>
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
        <div class="btn btn-default">
            <asp:LinkButton runat="server" Text="Partner Details" OnClick="btnNavigate_Click" CommandArgument="Partners/Details.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Strategic Plans" CommandArgument="StrategicPlans/Default.aspx" />
            <%-- <asp:HyperLink runat="server" Enabled="false" NavigateUrl="#" Text="Strategic Plans" />--%>
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" Text="Overview Plans" OnClick="btnNavigate_Click" CommandArgument="OverViewPlans/OverviewPlan.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Target Entry" CommandArgument="Targets/Default.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Sales Entry" CommandArgument="Sales/Default.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Plan Performance" CommandArgument="Sales/PlanandPerformance.aspx" />
        </div>
        <div class="btn btn-primary">
            <span style="font-family: HPSimplified_Bd;">Competitive</span>
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Open House" CommandArgument="OpenHouse/OpenHouseUI.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Targeted Goals" CommandArgument="TargetedGoals/Default.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Actions Reqd." CommandArgument="TargetedGoals/ActionForTargetedGoals.aspx" />
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Competitive Landscape</h3>
        </div>
        <div class="panel-body">

            <div class="form-horizontal">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CategoryId"
                    OnDataBound="GridView1_DataBound1" GridLines="None" OnRowCreated="GridView1_RowCreated" CssClass="table table-hover table-striped">

                    <Columns>
                        <asp:BoundField DataField="CategoryName" HeaderText="Category" />
                        <asp:BoundField DataField="CompetitorName" HeaderText="Competitor Name"  />
                       <%-- <asp:ImageField DataImageUrlField="CompetitorLogo"></asp:ImageField>--%>
                        <%-- <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:Label ID="txt" runat="server" TextMode="Number" Text='Competitor Name'></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="txtShareName" runat="server" TextMode="Number" Text='<%# Eval("CompetitorName") %>' CssClass="form-control DDTextBox"></asp:Label>
                                <asp:Image ID="imgLogo" runat="server" ImageUrl='<%# Eval("CompetitorLogo") %>' />
                            </ItemTemplate>
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>--%>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:TextBox ID="txtShare" runat="server" TextMode="Number" Text='<%# Eval("Share") %>' CssClass="form-control DDTextBox"></asp:TextBox>
                                <asp:HiddenField ID="hdnCompetitorId" runat="server" Value='<%# Eval("CompetitorId") %>' />
                            </ItemTemplate>
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <%-- <HeaderTemplate>
                            <asp:Label ID="lblM2" runat="server"></asp:Label>
                        </HeaderTemplate>--%>
                            <ItemTemplate>
                                <asp:TextBox ID="txtBrandPresenc" runat="server" TextMode="Number" Text='<%# Eval("BrandPresenc") %>' CssClass="form-control DDTextBox"></asp:TextBox>
                            </ItemTemplate>
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <%-- <HeaderTemplate>
                            <asp:Label ID="lblM3" runat="server"></asp:Label>
                        </HeaderTemplate>--%>
                            <ItemTemplate>
                                <asp:TextBox ID="txtPriceStrategy" runat="server" TextMode="SingleLine" Text='<%# Eval("PriceStrategy") %>' CssClass="form-control DDTextBox"></asp:TextBox>
                            </ItemTemplate>
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <%-- <HeaderTemplate>
                            <asp:Label ID="lblM3" runat="server"></asp:Label>
                        </HeaderTemplate>--%>
                            <ItemTemplate>
                                <asp:TextBox ID="txtStoreInvestment" runat="server" TextMode="SingleLine" Text='<%# Eval("StoreInvestment") %>' CssClass="form-control DDTextBox"></asp:TextBox>
                            </ItemTemplate>
                            <ItemStyle Width="100px" />
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <%-- <HeaderTemplate>
                            <asp:Label ID="lblM3" runat="server"></asp:Label>
                        </HeaderTemplate>--%>
                            <ItemTemplate>
                                <asp:TextBox ID="txtAdditionalComment" runat="server" TextMode="MultiLine" Text='<%# Eval("AdditionalComment") %>' CssClass="form-control DDTextBox"></asp:TextBox>
                            </ItemTemplate>
                            <ItemStyle Width="300px" />
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>

            </div>
            <div class="form-group">
                <div class="col-sm-offset-5 col-sm-7">
                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" CssClass="btn btn-primary" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-default" OnClick="btnCancel_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
