<%@ Page Title="OutletList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="HPPortal.Web.Outlets.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Outlets List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="OutletId" 
			ItemType="HPPortal.Data.Models.Outlet"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Outlets
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="OutletId" CommandName="Sort" CommandArgument="OutletId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="OutletName" CommandName="Sort" CommandArgument="OutletName" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="ContactPerson" CommandName="Sort" CommandArgument="ContactPerson" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Email" CommandName="Sort" CommandArgument="Email" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Phone" CommandName="Sort" CommandArgument="Phone" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Mobile" CommandName="Sort" CommandArgument="Mobile" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Address" CommandName="Sort" CommandArgument="Address" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CustomerSegmentsAddressed" CommandName="Sort" CommandArgument="CustomerSegmentsAddressed" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CoreBusiness" CommandName="Sort" CommandArgument="CoreBusiness" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CurrentBrands" CommandName="Sort" CommandArgument="CurrentBrands" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="MainCompetitors" CommandName="Sort" CommandArgument="MainCompetitors" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="StaffCount" CommandName="Sort" CommandArgument="StaffCount" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="OutletCategoryId" CommandName="Sort" CommandArgument="OutletCategoryId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CityId" CommandName="Sort" CommandArgument="CityId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="AssociatedUserId" CommandName="Sort" CommandArgument="AssociatedUserId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FrequencyOfEngagement" CommandName="Sort" CommandArgument="FrequencyOfEngagement" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="RelationshipStatus" CommandName="Sort" CommandArgument="RelationshipStatus" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Active" CommandName="Sort" CommandArgument="Active" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="OutletId" ID="OutletId" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="OutletName" ID="OutletName" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="ContactPerson" ID="ContactPerson" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Phone" ID="Phone" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Mobile" ID="Mobile" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Address" ID="Address" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="CustomerSegmentsAddressed" ID="CustomerSegmentsAddressed" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="CoreBusiness" ID="CoreBusiness" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="CurrentBrands" ID="CurrentBrands" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="MainCompetitors" ID="MainCompetitors" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="StaffCount" ID="StaffCount" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.OutletCategory != null ? Item.OutletCategory.Description : "" %>
							</td>
							<td>
								<%#: Item.City != null ? Item.City.Description : "" %>
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="AssociatedUserId" ID="AssociatedUserId" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FrequencyOfEngagement" ID="FrequencyOfEngagement" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="RelationshipStatus" ID="RelationshipStatus" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Active" ID="Active" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Outlets/Details", Item.OutletId) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Outlets/Edit", Item.OutletId) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Outlets/Delete", Item.OutletId) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

