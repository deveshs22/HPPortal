<%@ Page Title="OverviewPlanDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="HPPortal.Web.OverviewPlans.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this OverviewPlan?</h3>
        <asp:FormView runat="server"
            ItemType="HPPortal.Data.Models.OverviewPlan" DataKeyNames="OverviewPlanId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the OverviewPlan with OverviewPlanId <%: Request.QueryString["OverviewPlanId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete OverviewPlan</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>OverviewPlanId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="OverviewPlanId" ID="OverviewPlanId" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Strength</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Strength" ID="Strength" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Weakness</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Weakness" ID="Weakness" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Opportunity</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Opportunity" ID="Opportunity" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>SupportReqd</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="SupportReqd" ID="SupportReqd" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CreatedDate</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CreatedDate" ID="CreatedDate" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CreatedUser</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CreatedUser" ID="CreatedUser" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ModifiedDate</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ModifiedDate" ID="ModifiedDate" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ModifiedUser</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ModifiedUser" ID="ModifiedUser" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Comments</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Comments" ID="Comments" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Quarter</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Quarter" ID="Quarter" Mode="ReadOnly" />
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

