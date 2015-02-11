<%@ Page Title="StrategicPlanList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="HPPortal.Web.StrategicPlans.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>StrategicPlans List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
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
                            <th>
								<asp:LinkButton Text="StrategicPlanId" CommandName="Sort" CommandArgument="StrategicPlanId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="BusinessObjective" CommandName="Sort" CommandArgument="BusinessObjective" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Strategies" CommandName="Sort" CommandArgument="Strategies" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Metrics" CommandName="Sort" CommandArgument="Metrics" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="QuarterYear" CommandName="Sort" CommandArgument="QuarterYear" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="AssignedUserId" CommandName="Sort" CommandArgument="AssignedUserId" runat="Server" />
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
                            <th>
								<asp:LinkButton Text="Comments" CommandName="Sort" CommandArgument="Comments" runat="Server" />
							</th>
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
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="StrategicPlanId" ID="StrategicPlanId" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="BusinessObjective" ID="BusinessObjective" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Strategies" ID="Strategies" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Metrics" ID="Metrics" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="QuarterYear" ID="QuarterYear" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="AssignedUserId" ID="AssignedUserId" Mode="ReadOnly" />
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
							<td>
								<asp:DynamicControl runat="server" DataField="Comments" ID="Comments" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="CheckpointState" ID="CheckpointState" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/StrategicPlans/Details", Item.StrategicPlanId) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/StrategicPlans/Edit", Item.StrategicPlanId) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/StrategicPlans/Delete", Item.StrategicPlanId) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

