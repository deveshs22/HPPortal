<%@ Page Title="OverviewPlanInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="HPPortal.Web.OverviewPlans.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="HPPortal.Data.Models.OverviewPlan" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert OverviewPlan</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="Strength" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Weakness" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Opportunity" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="SupportReqd" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CreatedDate" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CreatedUser" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="ModifiedDate" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="ModifiedUser" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Comments" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Quarter" runat="server" />
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
