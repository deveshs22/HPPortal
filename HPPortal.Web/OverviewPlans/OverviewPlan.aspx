<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" EnableViewState="true" CodeBehind="OverviewPlan.aspx.cs" Inherits="HPPortal.Web.OverviewPlans.OverviewPlan" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

    <div>
        <p>&nbsp;</p>
    </div>
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
            <asp:LinkButton runat="server" Text="Strategic Plans" OnClick="btnNavigate_Click" CommandArgument="StrategicPlans/" />

        </div>
        <div class="btn btn-primary">
            <span style="font-family: HPSimplified_Bd;">Overview Plans</span>
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
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Insert OverviewPlan</h3>
        </div>
        <div class="panel-body">
            <fieldset class="form-horizontal">
                <div class="row">
                    <asp:ValidationSummary ID="summary" runat="server" ShowMessageBox="false" ShowSummary="true" CssClass="alert alert-danger" />
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <span class="col-md-3 control-label">Strength</span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtStrength" Rows="6" TextMode="MultiLine" CssClass="form-control DDTextBox" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <span class="col-md-3 control-label">Weakness</span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtWeakness" Rows="6" TextMode="MultiLine" CssClass="form-control DDTextBox" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <span class="col-md-3 control-label">Opportunity</span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtOpportunity" Rows="6" TextMode="MultiLine" CssClass="form-control DDTextBox" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <span class="col-md-3 control-label">SupportReqd</span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtSupportReqd" Rows="6" TextMode="MultiLine" CssClass="form-control DDTextBox" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-5 col-sm-7">
                        <asp:Button runat="server" ID="InsertButton" Text="Save" CssClass="btn btn-primary" OnClick="InsertButton_Click" />
                        <asp:Button runat="server" ID="CancelButton" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" OnClick="CancelButton_Click" />
                    </div>
                </div>
            </fieldset>
        </div>
    </div>



</asp:Content>
