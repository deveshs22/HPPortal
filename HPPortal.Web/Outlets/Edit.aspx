﻿<%@ Page Title="OutletEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="HPPortal.Web.Outlets.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="HPPortal.Data.Models.Outlet" DefaultMode="Edit" DataKeyNames="OutletId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Outlet with OutletId <%: Request.QueryString["OutletId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Outlet</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="OutletName" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="ContactPerson" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Email" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Phone" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Mobile" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Address" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CustomerSegmentsAddressed" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CoreBusiness" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CurrentBrands" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="MainCompetitors" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="StaffCount" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="OutletCategoryId" 
								DataTypeName="HPPortal.Data.Models.OutletCategory" 
								DataTextField="Description" 
								DataValueField="OutletCategoryId" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="CityId" 
								DataTypeName="HPPortal.Data.Models.City" 
								DataTextField="Description" 
								DataValueField="CityId" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="AssociatedUserId" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="FrequencyOfEngagement" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="RelationshipStatus" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Active" runat="server" />
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

