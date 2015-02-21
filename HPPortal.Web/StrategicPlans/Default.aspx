<%@ Page Title="StrategicPlanList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="HPPortal.Web.StrategicPlans.Default" %>

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
        <div class="btn btn-primary">
            <%-- <asp:HyperLink runat="server" Enabled="false" NavigateUrl="#" Text="Strategic Plans" />--%>
            <span style="font-family: HPSimplified_Bd;">Strategic Plans</span>
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
       <%-- <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Plan and Performance" CommandArgument="Sales/PlanandPerformance.aspx" />
        </div>--%>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="row">
                <div class="col-md-3">
                    <h4 class="panel-title">Strategic Plans</h4>
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
                    DataKeyNames="StrategicPlanId"
                    ItemType="HPPortal.Data.Models.StrategicPlan"
                    SelectMethod="GetData">
                    <EmptyDataTemplate>
                        There are no entries found for Strategic Plan
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table class="table">
                            <thead>
                                <tr>
                                    <%--  <th>
                                <asp:LinkButton Text="StrategicPlanId" CommandName="Sort" CommandArgument="StrategicPlanId" runat="Server" />
                            </th>--%>
                                    <th>
                                        <asp:LinkButton Text="BusinessObjective" CommandName="Sort" CommandArgument="BusinessObjective" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Strategies" CommandName="Sort" CommandArgument="Strategies" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Metrics" CommandName="Sort" CommandArgument="Metrics" runat="Server" />
                                    </th>
                                    <%--  <th>
                                <asp:LinkButton Text="QuarterYear" CommandName="Sort" CommandArgument="QuarterYear" runat="Server" />
                            </th>--%>
                                    <th>
                                        <asp:LinkButton Text="AssignedUser" CommandName="Sort" CommandArgument="AssignedUserId" runat="Server" />
                                    </th>

                                    <th>
                                        <asp:LinkButton Text="Checkpoint" CommandName="Sort" CommandArgument="CheckpointState" runat="Server" />
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
                                <asp:DynamicControl runat="server" DataField="BusinessObjective" UIHint="MultilineText" ID="BusinessObjective" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="Strategies" UIHint="MultilineText" ID="Strategies" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="Metrics" UIHint="MultilineText" ID="Metrics" Mode="ReadOnly" />
                            </td>
                            <%-- <td>
                        <asp:DynamicControl runat="server" DataField="QuarterYear" ID="QuarterYear" Mode="ReadOnly" />
                    </td>--%>
                            <td>
                                <%--<asp:DynamicControl runat="server" DataField="AssignedUserId" ID="AssignedUserId" Mode="ReadOnly" />--%>
                                <div style="padding-top: 7px;"><%#: Item.User != null ? Item.User.Name : "" %></div>
                            </td>

                            </td>
                   
                    <td>
                        <asp:DynamicControl runat="server" DataField="CheckpointState" ID="CheckpointState" Mode="ReadOnly" />
                    </td>
                            <td style="padding-top: 7px;">

                                <asp:LinkButton runat="server" CommandArgument='<%# Eval("StrategicPlanId") %>' OnClick="EditButton_Click" Text="Edit" />

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
                        <legend>Insert StrategicPlan</legend>
                        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />

                        <div class="form-group">
                            <asp:Label ID="AssignedUser" Text="Assigned User" runat="server" CssClass="col-md-3 control-label" />
                            <div class="col-md-7">

                                <asp:DropDownList
                                    ID="ddlUser"
                                    SelectMethod="GetUsers"
                                    DataTextField="Name"
                                    DataValueField="UserId"
                                    CssClass="maxWidth form-control"
                                    AppendDataBoundItems="true"
                                    runat="server">
                                    <asp:ListItem Text="Select An Option" Value=""></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">

                            <span class="col-md-3 control-label">BusinessObjective</span>
                            <div class="col-md-7">
                                <asp:TextBox ID="txtBusinessObjective"
                                    TextMode="MultiLine" CssClass="form-control DDTextBox"
                                    runat="server" />

                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-3 control-label">Strategies</span>
                            <div class="col-md-7">
                                <asp:TextBox ID="txtStrategies"
                                    TextMode="MultiLine" CssClass="form-control DDTextBox"
                                    runat="server" />

                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-3 control-label">Metrics</span>

                            <div class="col-md-7">
                                <asp:TextBox ID="txtMetrics"
                                    TextMode="MultiLine" CssClass="form-control DDTextBox"
                                    runat="server" />

                            </div>
                        </div>
                        <div class="form-group">
                            <%--<asp:DynamicControl Mode="Insert" DataField="BusinessObjective" UIHint="MultilineText" runat="server" />
                                <asp:DynamicControl Mode="Insert" DataField="Strategies" runat="server" UIHint="MultilineText" />
                                <asp:DynamicControl Mode="Insert" DataField="Metrics" runat="server" UIHint="MultilineText" />
                                <asp:DynamicControl Mode="Insert" DataField="Comments" runat="server" UIHint="MultilineText" />
                                <asp:DynamicControl Mode="Insert" DataField="CheckpointState" runat="server" />--%>

                            <asp:Label ID="CheckpointState" Text="Checkpoint State" runat="server" CssClass="col-md-3 control-label" />

                            <div class="col-md-7">

                                <asp:DropDownList
                                    ID="ddlCheckpointState"
                                    SelectMethod="GetCheckpointState"
                                    DataTextField="Value"
                                    DataValueField="Value"
                                    CssClass="maxWidth form-control"
                                    AppendDataBoundItems="true"
                                    runat="server">
                                    <asp:ListItem Text="Select An Option" Value=""></asp:ListItem>
                                </asp:DropDownList>
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

