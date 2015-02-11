<%@ Page Title="StrategicPlanInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="HPPortal.Web.StrategicPlans.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="HPPortal.Data.Models.StrategicPlan" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert StrategicPlan</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <div id="Div1" runat="server" class="form-group">
    <asp:Label ID="Quarter" runat="server" CssClass="col-md-4 control-label" />
    <div class="col-md-7">
		<asp:DropDownList 
			ID="ddlQuarter"
			SelectMethod="GetQuarter"
			DataTextField="QuarterYear"
			DataValueField="MonthId"
			CssClass="maxWidth form-control"
            AppendDataBoundItems="true"
			Runat="server">           
                <asp:ListItem Text="Select An Option" Value=""></asp:ListItem>
            </asp:DropDownList>
    </div>
</div>
						    <asp:DynamicControl Mode="Insert" DataField="BusinessObjective" runat="server" UIHint="MultilineText" />
						    <asp:DynamicControl Mode="Insert" DataField="Strategies" runat="server" UIHint="MultilineText" />
						    <asp:DynamicControl Mode="Insert" DataField="Metrics" runat="server" UIHint="MultilineText" />
						    <asp:DynamicControl Mode="Insert" DataField="QuarterYear" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="AssignedUserId" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Comments" runat="server" UIHint="MultilineText" />
						    <asp:DynamicControl Mode="Insert" DataField="CheckpointState" runat="server" />
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
