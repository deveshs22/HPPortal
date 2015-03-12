<%@ Page Title="ActionForTargetedGoals" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="ActionForTargetedGoals.aspx.cs" Inherits="HPPortal.Web.TargetedGoals.ActionForTargetedGoals" Async="true" %>

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
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Strategic Plans" CommandArgument="StrategicPlans/Default.aspx" />
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
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Competitive" CommandArgument="Competitor/CompetitiveLandscape.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Open House" CommandArgument="OpenHouse/OpenHouseUI.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Targeted Goals" CommandArgument="TargetedGoals/Default.aspx" />
        </div>
        
    
    <div class="btn btn-primary">
        <%-- <asp:HyperLink runat="server" Enabled="false" NavigateUrl="#" Text="Strategic Plans" />--%>
        <span style="font-family: HPSimplified_Bd;">Actions Reqd.</span>
    </div>
        </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="row">
                <div class="col-md-3">
                    <h4 class="panel-title">Actions for Targeted Goals</h4>
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
                    DataKeyNames="ActionId"
                    ItemType="HPPortal.Data.Models.ActionForTargetedGoal"
                    SelectMethod="GetData">
                    <EmptyDataTemplate>
                        There are no entries found for Actions for Targeted Goals
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table class="table">
                            <thead>
                                <tr>
                                    <%--  <th>
                                <asp:LinkButton Text="StrategicPlanId" CommandName="Sort" CommandArgument="StrategicPlanId" runat="Server" />
                            </th>--%>
                                    <th>
                                        <asp:LinkButton Text="Goals" CommandName="Sort" CommandArgument="GoalName" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Where we are" CommandName="Sort" CommandArgument="PreviousQuarter" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Where we want" CommandName="Sort" CommandArgument="QuarterPlan" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Action Required" CommandName="Sort" CommandArgument="ActionRequired" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="AssignedUser" CommandName="Sort" CommandArgument="AssignedUserId" runat="Server" />
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
                            <%--<td>
                        <asp:DynamicControl runat="server" DataField="StrategicPlanId" ID="StrategicPlanId" Mode="ReadOnly" />
                    </td>--%>
                            <td>
                                <asp:DynamicControl runat="server" DataField="GoalName" UIHint="MultilineText" ID="GoalName" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="PreviousQuarter" UIHint="MultilineText" ID="PreviousQuarter" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="QuarterPlan" UIHint="MultilineText" ID="QuarterPlan" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="ActionRequired" UIHint="MultilineText" ID="ActionRequired" Mode="readonly" />
                            </td>
                            <td>
                                <div style="padding-top: 7px;"><%#:  string.Join(",", Item.Users.Select(x => x.Name)) %></div>
                            </td>
                            </td>   
                            <td style="padding-top: 7px;">
                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("ActionId") %>' OnClick="EditButton_Click" Text="Edit" />
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
                    <h4>Insert Action Reqd. for Targeted Goals</h4>
                </div>
                <div class="modal-body" id="content">
                    <div class="row">
                    <div class="col-md-8 form-horizontal">
                   
                        
                        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                                              
                        <div class="form-group">

                            <span class="col-md-3 control-label">Goal</span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtGoal"
                                    TextMode="MultiLine" CssClass="form-control DDTextBox"
                                    runat="server" />

                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-3 control-label">Where we are</span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtWhereWeAre"
                                    TextMode="MultiLine" CssClass="form-control DDTextBox"
                                    runat="server" />

                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-3 control-label">Where we want</span>

                            <div class="col-md-8">
                                <asp:TextBox ID="txtWhereWeWant"
                                    TextMode="MultiLine" CssClass="form-control DDTextBox"
                                    runat="server" />

                            </div>
                        </div>

                         <div class="form-group">
                            <span class="col-md-3 control-label">Actions Required</span>

                            <div class="col-md-8">
                                <asp:TextBox ID="txtAction"
                                    TextMode="MultiLine" CssClass="form-control DDTextBox"
                                    runat="server" />

                            </div>
                        </div>
                        <br />
                        <br />
                        <div class="form-group">
                            <div class="col-md-offset-6">
                                <asp:Button runat="server" ID="InsertButton" OnClick="InsertButton_Click" Text="Insert" CssClass="btn btn-primary" />
                                <asp:Button runat="server" ID="CancelButton" OnClick="CancelButton_Click" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                            </div>
                        </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel panel-default">
  <div class="panel-heading">Assigned Users</div>
  <div class="panel-body" style="height:400px; overflow-x:scroll;">
    <asp:TreeView ID="treeViewUsers" ShowCheckBoxes="All" runat="server" ExpandDepth="0" >
        <NodeStyle CssClass="leafNode" />
                                </asp:TreeView>
  </div>
</div>
                        </div>
                        </div>
                        
                    

                </div>
            </div>
        </div>
    </div>
     <style type="text/css">
        .leafNode
        {          
            padding-left:4px;           
            font-size:15px;
        }
    </style>
</asp:Content>

