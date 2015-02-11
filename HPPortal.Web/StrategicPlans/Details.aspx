<%@ Page Title="StrategicPlan Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="HPPortal.Web.StrategicPlans.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="HPPortal.Data.Models.StrategicPlan" DataKeyNames="StrategicPlanId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the StrategicPlan with StrategicPlanId <%: Request.QueryString["StrategicPlanId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>StrategicPlan Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>StrategicPlanId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="StrategicPlanId" ID="StrategicPlanId" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>BusinessObjective</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="BusinessObjective" ID="BusinessObjective" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Strategies</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Strategies" ID="Strategies" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Metrics</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Metrics" ID="Metrics" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>QuarterYear</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="QuarterYear" ID="QuarterYear" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>AssignedUserId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="AssignedUserId" ID="AssignedUserId" Mode="ReadOnly" />
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
									<strong>CheckpointState</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CheckpointState" ID="CheckpointState" Mode="ReadOnly" />
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

