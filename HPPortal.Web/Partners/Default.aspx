<%@ Page Title="PartnerList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="HPPortal.Web.Partners.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
    <div class="col-md-3">
       <h2>Partner List</h2>
     </div>
      <div class="col-md-4">               
          <br />
          <div class="btn btn-default">
             <asp:HyperLink runat="server" NavigateUrl="Insert" Text="+ Create new" />
         </div>
     </div>
       </div>
     <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="PartnerId" 
			ItemType="HPPortal.Data.Models.Partner"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Partner
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            
                            <th>
								<asp:LinkButton Text="Partner Name" CommandName="Sort" CommandArgument="PartnerName" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Contact Person" CommandName="Sort" CommandArgument="ContactPerson" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Email" CommandName="Sort" CommandArgument="Email" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Phone" CommandName="Sort" CommandArgument="Phone" runat="Server" />
							</th>
                           
                            <th>
								<asp:LinkButton Text="Partner Category" CommandName="Sort" CommandArgument="PartnerCategoryId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="City" CommandName="Sort" CommandArgument="CityId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Account Manager" CommandName="Sort" CommandArgument="AssociatedUserId" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="PartnerName" ID="PartnerName" Mode="ReadOnly" />
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
							<div style="padding-top:7px;"><%#: Item.PartnerCategory != null ? Item.PartnerCategory.Description : "" %></div>
							</td>
							<td>
								<div style="padding-top:7px;"><%#: Item.City != null ? Item.City.Description : "" %></div>
							</td>
							<td>
								<div style="padding-top:7px;"><%#: Item.User != null ? Item.User.Name : "" %></div>
							</td>
							
                    <td>
                        <div style="padding-top:7px;">
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Partners/Details", Item.PartnerId) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Partners/Edit", Item.PartnerId) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Partners/Delete", Item.PartnerId) %>' Text="Delete" />
                            </div>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

