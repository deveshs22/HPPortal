<%@ Page Title="OutletInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="HPPortal.Web.Outlets.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="HPPortal.Data.Models.Outlet" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Outlet</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="OutletName" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="ContactPerson" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Email" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Phone" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Mobile" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Address" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CustomerSegmentsAddressed" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CoreBusiness" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CurrentBrands" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="MainCompetitors" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="StaffCount" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="OutletCategoryId" 
								DataTypeName="HPPortal.Data.Models.OutletCategory" 
								DataTextField="Description" 
								DataValueField="OutletCategoryId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="CityId" 
								DataTypeName="HPPortal.Data.Models.City" 
								DataTextField="Description" 
								DataValueField="CityId" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="AssociatedUserId" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="FrequencyOfEngagement" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="RelationshipStatus" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Active" runat="server" />
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
