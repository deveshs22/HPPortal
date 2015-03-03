<%@ Page Title="TargetedPlanList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" EnableViewState="true" Inherits="HPPortal.Web.TargetedGoals.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
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
        <div class="btn  btn-default">
            <%-- <asp:HyperLink runat="server" Enabled="false" NavigateUrl="#" Text="Strategic Plans" />--%>
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Strategic Plans" CommandArgument="StrategicPlans/Default.aspx" />
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
        <div class="btn btn-primary">
            <span style="font-family: HPSimplified_Bd;">Targeted Goals</span>
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Actions for Targeted Goals" CommandArgument="TargetedGoals/ActionForTargetedGoals.aspx" />
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="row">
                <div class="col-md-3">
                    <h4 class="panel-title">Targeted Goals</h4>
                </div>
                <div class="col-md-4">

                    <div class="btn btn-default">
                        <a href='#' data-toggle='modal' data-target='#modalC'>Add New Row</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel-body">
            <div>
                <asp:ListView ID="ListView1" runat="server"
                    DataKeyNames="TargetedGoalId"
                    ItemType="HPPortal.Data.Models.TargetedGoal"
                    SelectMethod="GetData">
                    <EmptyDataTemplate>
                        There are no entries found for Targeted goals
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>
                                        <asp:LinkButton Text="Goal" CommandName="Sort" CommandArgument="TargetedGoalName" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Plan" CommandName="Sort" CommandArgument="QuarterPlan" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Where we were" CommandName="Sort" CommandArgument="PreviousQuarter" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Where we want" CommandName="Sort" CommandArgument="TargetGoal" runat="Server" />
                                    </th>

                                    <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr runat="server" id="itemPlaceholder" />
                            </tbody>
                        </table>
                        <asp:DataPager PageSize="5" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                                <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                                <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                            </Fields>
                        </asp:DataPager>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:DynamicControl runat="server" DataField="TargetedGoalName" UIHint="MultilineText" ID="TargetedGoalName" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="QuarterPlan" UIHint="MultilineText" ID="QuarterPlan" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="PreviousQuarter" UIHint="MultilineText" ID="PreviousQuarter" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="TargetGoal" UIHint="MultilineText" ID="TargetedGoal" Mode="ReadOnly" />
                            </td>

                            <td style="padding-top: 7px;">

                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("TargetedGoalId") %>' OnClick="EditButton_Click" Text="Edit" />

                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modalC" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 1000px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>

                </div>
                <div class="modal-body" id="content">

                    <fieldset class="form-horizontal">
                        <legend>Insert Targeted Goal</legend>
                        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />


                        <div class="form-group">

                            <span class="col-md-3 control-label">Goal</span>
                            <div class="col-md-7">
                                <asp:TextBox ID="txtTargetedGoalName"
                                    TextMode="MultiLine" CssClass="form-control DDTextBox"
                                    runat="server" />

                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-3 control-label">Plan</span>
                            <div class="col-md-7">
                                <asp:TextBox ID="txtQuarterPlan"
                                    TextMode="MultiLine" CssClass="form-control DDTextBox"
                                    runat="server" />

                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-3 control-label">Where we were </span>

                            <div class="col-md-7">
                                <asp:TextBox ID="txtPreviousQuarter"
                                    TextMode="MultiLine" CssClass="form-control DDTextBox"
                                    runat="server" />

                            </div>
                        </div>


                        <div class="form-group">
                            <span class="col-md-3 control-label">Where we want </span>

                            <div class="col-md-7">
                                <asp:TextBox ID="txtTargetedGoal"
                                    TextMode="MultiLine" CssClass="form-control DDTextBox"
                                    runat="server" />

                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <asp:Button runat="server" ID="InsertButton" OnClick="InsertButton_Click" Text="Insert" CssClass="btn btn-primary" />
                                <asp:Button runat="server" ID="CancelButton" OnClick="CancelButton_Click" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                            </div>
                        </div>
                    </fieldset>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

