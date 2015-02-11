<%@ Page Title="PartnerEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="HPPortal.Web.Partners.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="HPPortal.Data.Models.Partner" DefaultMode="Edit" DataKeyNames="PartnerId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Partner with PartnerId <%: Request.QueryString["PartnerId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Partner</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
					 <div class="row">
                        <div class="col-md-5">
						    <asp:DynamicControl Mode="Edit" DataField="PartnerName" runat="server" />
						    				    
						    <asp:DynamicControl Mode="Edit" DataField="CustomerSegmentsAddressed" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CoreBusiness" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CurrentBrands" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="MainCompetitors" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="StaffCount" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="PartnerCategoryId" 
								DataTypeName="HPPortal.Data.Models.PartnerCategory" 
								DataTextField="Description" 
								DataValueField="PartnerCategoryId" 
								UIHint="ForeignKey" runat="server" />
							
						    
                    <asp:DynamicControl Mode="Edit" 
								DataField="AssociatedUserId" 
								DataTypeName="HPPortal.Data.Models.User" 
								DataTextField="Name" 
								DataValueField="UserId" 
								UIHint="ForeignKey" runat="server" />

						    <asp:DynamicControl Mode="Edit" DataField="FrequencyOfEngagement" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="RelationshipStatus" runat="server" />
						    
                         </div>
                        <div class="col-md-7">
                            <asp:DynamicControl Mode="Edit" DataField="ContactPerson" runat="server" />
                            <asp:DynamicControl Mode="Edit" DataField="Email" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Phone" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Mobile" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Address" runat="server" />
                            <asp:DynamicControl Mode="Edit" 
								DataField="CityId" 
								DataTypeName="HPPortal.Data.Models.City" 
								DataTextField="Description" 
								DataValueField="CityId" 
								UIHint="ForeignKey" runat="server" />
                            </div>
                        </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

