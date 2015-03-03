<%@ Page Language="C#" MasterPageFile="~/Site.Master" EnableViewState="true" AutoEventWireup="true" CodeBehind="OpenHouseUI.aspx.cs" Inherits="HPPortal.Web.OpenHouse.OpenHouseUI" %>

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
            <asp:LinkButton runat="server" Text="Partner Details" OnClick="btnNavigate_Click" CommandArgument="Partners/Details.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Strategic Plans" CommandArgument="StrategicPlans/" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Overview Plans" CommandArgument="OverViewPlans/OverviewPlan.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Target Entry" CommandArgument="Targets/Default.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Primary Sales Entry" CommandArgument="Sales/Default.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Plan Performance" CommandArgument="Sales/PlanandPerformance.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Competitive" CommandArgument="Competitor/CompetitiveLandscape.aspx" />
            </div>
        <div class="btn btn-primary">
           <span style="font-family: HPSimplified_Bd;">Open House</span>
        </div>
         <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Targeted Goals" CommandArgument="TargetedGoals/Default.aspx" />
        </div>
    </div>


    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Open House</h3>
        </div>
        <div class="panel-body">
            <fieldset class="form-horizontal">
                <div class="row">
                    <asp:ValidationSummary ID="summary" runat="server" ShowMessageBox="false" ShowSummary="true" CssClass="alert alert-danger" />
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <span class="col-md-2 control-label">Description</span>
                            <div class="col-md-9">
                                <asp:TextBox ID="txtDescription" Rows="12" TextMode="MultiLine" CssClass="form-control DDTextBox" runat="server" />
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
