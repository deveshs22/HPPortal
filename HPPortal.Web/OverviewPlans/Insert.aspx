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
                    <div class="row">
                    <div class="col-md-6">
                    <asp:DynamicControl Mode="Insert" DataField="Partner" runat="server" />
                         </div>
                        <div class="col-md-6">
                            <asp:DynamicControl Mode="Insert" DataField="Quarter" runat="server" />
                            <//div>

                    </div>
                    <div class="row">
                    <div class="col-md-6">
						    <asp:DynamicControl Mode="Insert" DataField="Strength" runat="server" UIHint="MultilineText" TextRows="6"/>
                        </div>
                        <div class="col-md-6">
						    <asp:DynamicControl Mode="Insert" DataField="Weakness" runat="server" UIHint="MultilineText" TextRows="6"/>
                        </div>
                        </div>
                         <div class="row">
                    <div class="col-md-6">
						    <asp:DynamicControl Mode="Insert" DataField="Opportunity" runat="server" UIHint="MultilineText" TextRows="6" />
                         </div>
                        <div class="col-md-6">
						    <asp:DynamicControl Mode="Insert" DataField="SupportReqd" runat="server" UIHint="MultilineText" TextRows="6"/>
						    
						    </div>
                             </div>
                    <%--<asp:DynamicControl Mode="Insert" DataField="Comments" runat="server" UIHint="MultilineText"/>--%>
                    <div class="form-group">
                        <div class="col-sm-offset-5 col-sm-7">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
