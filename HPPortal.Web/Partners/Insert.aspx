<%@ Page Title="PartnerInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="HPPortal.Web.Partners.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server" ID="FormView1"
            ItemType="HPPortal.Data.Models.Partner" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Partner</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <div class="row">
                        <div class="col-md-5">
						    <asp:DynamicControl Mode="Insert" DataField="PartnerName" runat="server" />
						    				    
						    <asp:DynamicControl Mode="Insert" DataField="CustomerSegmentsAddressed" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CoreBusiness" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CurrentBrands" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="MainCompetitors" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="StaffCount" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="PartnerCategoryId" 
								DataTypeName="HPPortal.Data.Models.PartnerCategory" 
								DataTextField="Description" 
								DataValueField="PartnerCategoryId" 
								UIHint="ForeignKey" runat="server" />
							
						    
                    <asp:DynamicControl Mode="Insert" 
								DataField="AssociatedUserId" 
								DataTypeName="HPPortal.Data.Models.User" 
								DataTextField="Name" 
								DataValueField="UserId" 
								UIHint="ForeignKey" runat="server" id="ddlAssociatedUser"/>

						    <asp:DynamicControl Mode="Insert" DataField="FrequencyOfEngagement" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="RelationshipStatus" runat="server" />
						    
                         </div>
                        <div class="col-md-7">
                            <asp:DynamicControl Mode="Insert" DataField="ContactPerson" runat="server" />
                            <asp:DynamicControl Mode="Insert" DataField="Email" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Phone" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Mobile" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Address" runat="server" />
                            <asp:DynamicControl Mode="Insert" 
								DataField="CityId" 
								DataTypeName="HPPortal.Data.Models.City" 
								DataTextField="Description" 
								DataValueField="CityId" 
								UIHint="ForeignKey" runat="server" />
                            </div>
                        </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
