<%@ Page Title="Partner Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="HPPortal.Web.Partners.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="HPPortal.Data.Models.Partner" DataKeyNames="PartnerId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Partner with PartnerId <%: Request.QueryString["PartnerId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Partner Details</legend>
							<div class="row">
								
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Partner Name
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="PartnerName" ID="PartnerName" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Contact Person
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ContactPerson" ID="ContactPerson" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Email
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Phone
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Phone" ID="Phone" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Mobile
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Mobile" ID="Mobile" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Address
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Address" ID="Address" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Customer Segments
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CustomerSegmentsAddressed" ID="CustomerSegmentsAddressed" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Core Business
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CoreBusiness" ID="CoreBusiness" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Current Brands
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CurrentBrands" ID="CurrentBrands" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Main Competitors
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="MainCompetitors" ID="MainCompetitors" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Staff Count
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="StaffCount" ID="StaffCount" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Category
								</div>
								<div class="col-sm-4">
									<%#: Item.PartnerCategory != null ? Item.PartnerCategory.Description : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									City
								</div>
								<div class="col-sm-4">
									<%#: Item.City != null ? Item.City.Description : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Account Manager
								</div>
								<div class="col-sm-4">
									<%#: Item.User != null ? Item.User.Name : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Frequency of Engagement
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FrequencyOfEngagement" ID="FrequencyOfEngagement" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 control-label">
									Relationship Status
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="RelationshipStatus" ID="RelationshipStatus" Mode="ReadOnly" />
								</div>
							</div>
							
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

