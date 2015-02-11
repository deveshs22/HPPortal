<%@ Page Title="StrategicPlanEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="HPPortal.Web.StrategicPlans.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="HPPortal.Data.Models.StrategicPlan" DefaultMode="Edit" DataKeyNames="StrategicPlanId"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the StrategicPlan with StrategicPlanId <%: Request.QueryString["StrategicPlanId"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit StrategicPlan</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="BusinessObjective" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Strategies" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Metrics" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="QuarterYear" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="AssignedUserId" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CreatedDate" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CreatedUser" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="ModifiedDate" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="ModifiedUser" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Comments" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CheckpointState" runat="server" />
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

