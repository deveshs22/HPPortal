<%@ Page Title="OverviewPlanList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="HPPortal.Web.OverviewPlans.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>OverviewPlans List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="OverviewPlanId" 
			ItemType="HPPortal.Data.Models.OverviewPlan"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for OverviewPlans
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="OverviewPlanId" CommandName="Sort" CommandArgument="OverviewPlanId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Strength" CommandName="Sort" CommandArgument="Strength" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Weakness" CommandName="Sort" CommandArgument="Weakness" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Opportunity" CommandName="Sort" CommandArgument="Opportunity" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="SupportReqd" CommandName="Sort" CommandArgument="SupportReqd" runat="Server" />
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
								<asp:LinkButton Text="Quarter" CommandName="Sort" CommandArgument="Quarter" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="OverviewPlanId" ID="OverviewPlanId" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Strength" ID="Strength" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Weakness" ID="Weakness" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Opportunity" ID="Opportunity" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="SupportReqd" ID="SupportReqd" Mode="ReadOnly" />
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
								<asp:DynamicControl runat="server" DataField="Quarter" ID="Quarter" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/OverviewPlans/Details", Item.OverviewPlanId) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/OverviewPlans/Edit", Item.OverviewPlanId) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/OverviewPlans/Delete", Item.OverviewPlanId) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

