<%@ Page Title="StrategicPlanList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="HPPortal.Web.StrategicPlans.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">

    <div class="form-group" style="margin-top: 20px;">
        <div class="col-md-2 control-label">
            <span style="font-weight: bold;">Partner:</span>

        </div>
        <div class="col-md-2 control-label">
            <asp:Label ID="lblPartner" runat="server" Style="font-weight: bold;"></asp:Label>

        </div>

        <div class="col-md-2 control-label">
            <span style="font-weight: bold;">Outlet Type:</span>
        </div>
        <div class="col-md-2 control-label">
            <asp:Label ID="lblOutletType" runat="server" Style="font-weight: bold;"></asp:Label>

        </div>

        <div class="col-md-2 control-label">
            <span style="font-weight: bold;">Quater:</span>
        </div>
        <div class="col-md-2 control-label">
            <asp:Label ID="lblQuater" runat="server" Style="font-weight: bold;"></asp:Label>

        </div>

    </div>
    <div class="form-group">
        <div class="col-md-2 control-label">
            <span style="font-weight: bold;">City:</span>
        </div>
        <div class="col-md-2 control-label">
            <asp:Label ID="lblCity" runat="server" Style="font-weight: bold;"></asp:Label>

        </div>

        <div class="col-md-2 control-label">
            <span style="font-weight: bold;">HP Account Manager:</span>
        </div>
        <div class="col-md-2 control-label">
            <asp:Label ID="lblAccountManager" runat="server" Style="font-weight: bold;"></asp:Label>

        </div>

        <div class="col-md-4 control-label">
        </div>

    </div>

    <div class="form-group">
        <div class="col-md-6">
            <h2>StrategicPlans List</h2>
            <p>
                <a href='#' data-toggle='modal' data-target='#modalC'>Create new</a>
            </p>
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

    <div>
        <asp:ListView ID="ListView1" runat="server"
            DataKeyNames="StrategicPlanId"
            ItemType="HPPortal.Data.Models.StrategicPlan"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for StrategicPlans
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
                                <asp:LinkButton Text="CreatedDate" CommandName="Sort" CommandArgument="CreatedDate" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="CreatedUser" CommandName="Sort" CommandArgument="CreatedUser" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="ModifiedDate" CommandName="Sort" CommandArgument="ModifiedDate" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="ModifiedUser" CommandName="Sort" CommandArgument="ModifiedUser" runat="Server" />
                            </th>
                            <%-- <th>
                                <asp:LinkButton Text="Comments" CommandName="Sort" CommandArgument="Comments" runat="Server" />
                            </th>--%>
                            <th>
                                <asp:LinkButton Text="CheckpointState" CommandName="Sort" CommandArgument="CheckpointState" runat="Server" />
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
                        <asp:DynamicControl runat="server" DataField="CreatedDate" ID="CreatedDate" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="CreatedUser" ID="CreatedUser" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="ModifiedDate" ID="ModifiedDate" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="ModifiedUser" ID="ModifiedUser" Mode="ReadOnly" />

                    </td>
                    <%--<td>
                        <asp:DynamicControl runat="server" DataField="Comments" ID="Comments" Mode="ReadOnly" />
                    </td>--%>
                    <td>
                        <asp:DynamicControl runat="server" DataField="CheckpointState" ID="CheckpointState" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/StrategicPlans/Details", Item.StrategicPlanId) %>' Text="Details" />
                        | 
					    <%--<asp:HyperLink runat="server"  OnClick="EditButton_Click" NavigateUrl='<%# FriendlyUrl.Href("~/StrategicPlans/Edit", Item.StrategicPlanId) %>' Text="Edit" />--%>

                        <asp:LinkButton runat="server" CommandArgument='<%# Eval("StrategicPlanId") %>' OnClick="EditButton_Click" Text="Edit" />
                        | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/StrategicPlans/Delete", Item.StrategicPlanId) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>

</asp:Content>

