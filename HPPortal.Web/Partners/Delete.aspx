﻿<%@ Page Title="PartnerDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="HPPortal.Web.Partners.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Partner?</h3>
        <asp:FormView runat="server"
            ItemType="HPPortal.Data.Models.Partner" DataKeyNames="PartnerId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Partner with PartnerId <%: Request.QueryString["PartnerId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Partner</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>PartnerId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="PartnerId" ID="PartnerId" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>PartnerName</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="PartnerName" ID="PartnerName" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ContactPerson</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ContactPerson" ID="ContactPerson" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Email</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Phone</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Phone" ID="Phone" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Mobile</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Mobile" ID="Mobile" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Address</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Address" ID="Address" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CustomerSegmentsAddressed</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CustomerSegmentsAddressed" ID="CustomerSegmentsAddressed" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CoreBusiness</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CoreBusiness" ID="CoreBusiness" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CurrentBrands</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CurrentBrands" ID="CurrentBrands" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>MainCompetitors</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="MainCompetitors" ID="MainCompetitors" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>StaffCount</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="StaffCount" ID="StaffCount" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>PartnerCategoryId</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.PartnerCategory != null ? Item.PartnerCategory.Description : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CityId</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.City != null ? Item.City.Description : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>AssociatedUserId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="AssociatedUserId" ID="AssociatedUserId" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FrequencyOfEngagement</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FrequencyOfEngagement" ID="FrequencyOfEngagement" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>RelationshipStatus</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="RelationshipStatus" ID="RelationshipStatus" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Active</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Active" ID="Active" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

