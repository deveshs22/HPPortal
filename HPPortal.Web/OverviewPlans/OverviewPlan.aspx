<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" EnableViewState="true" CodeBehind="OverviewPlan.aspx.cs" Inherits="HPPortal.Web.OverviewPlans.OverviewPlan" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div>
            <p>&nbsp;</p>
            <fieldset class="form-horizontal">
                <legend>Insert OverviewPlan</legend>
                <div class="row">
                    <asp:ValidationSummary ID="summary" runat="server" ShowMessageBox="false" ShowSummary="true" CssClass="alert alert-danger" />
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <span class="col-md-3 control-label">Strength</span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtStrength" Rows="6" TextMode="MultiLine" CssClass="form-control DDTextBox" runat="server" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <span class="col-md-3 control-label">Weakness</span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtWeakness" Rows="6" TextMode="MultiLine" CssClass="form-control DDTextBox" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                     <div class="col-md-6">
                        <div class="form-group">
                            <span class="col-md-3 control-label">Opportunity</span>
                            <div class="col-md-8">
                        <asp:TextBox ID="txtOpportunity" Rows="6" TextMode="MultiLine" CssClass="form-control DDTextBox" runat="server" />
                            </div>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <span class="col-md-3 control-label">SupportReqd</span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtSupportReqd"  Rows="6" TextMode="MultiLine" CssClass="form-control DDTextBox" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-5 col-sm-7">
                        <asp:Button runat="server" ID="InsertButton" Text="Save" CssClass="btn btn-primary" OnClick="InsertButton_Click" />
                        <asp:Button runat="server" ID="CancelButton" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" OnClick="CancelButton_Click" />
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
