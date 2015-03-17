<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JBPlan.aspx.cs" Inherits="HPPortal.Web.JBPlan" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        &nbsp;
    </div>
    <div class="row form-horizontal">

        <br />
        
        
         <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1"><ProgressTemplate>
             <div class="alert alert-warning" role="alert">
                    <p>Loading Quarters...</p>
                 </div>
             </ProgressTemplate></asp:UpdateProgress>
            
        <br />
        <div class="panel panel-default">
            <div class="panel-heading">

                <h2 class="panel-title">Welcome to HP JB Plan Creation</h2>
                
            </div>
           
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="true">
                <ContentTemplate>
            <div class="panel-body">
                <br />
                <div class="row">
                    <div class="col-md-6">
                        <div id="div1" class="form-group">
                            <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Partner:" />
                            <div class="col-md-6">
                                <asp:DropDownList
                                    ID="ddlPartner"
                                    SelectMethod="GetPartners"
                                    DataTextField="PartnerName"
                                    DataValueField="PartnerId"
                                    CssClass="form-control"
                                    Width="300px"
                                    AppendDataBoundItems="true"
                                    runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPartner_SelectedIndexChanged">
                                    <asp:ListItem Text="Select Partner" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-2">
                                &nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlPartner" InitialValue="0" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div id="div2" class="form-group">
                            <asp:Label ID="Quarter" runat="server" CssClass="col-md-2 control-label" Text="Quarter:" />
                            <div class="col-md-6">
                                <asp:DropDownList
                                    ID="ddlQuarter"
                                    CssClass="maxWidth form-control"
                                    AppendDataBoundItems="true"
                                    runat="server">
                                    <asp:ListItem Text="Select Quarter" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-2">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlQuarter" InitialValue="0" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
            </div>
                    </ContentTemplate>
            </asp:UpdatePanel>
            <div class="panel-footer" style="align-content: center;">
                <asp:Button runat="server" ID="btnCreate" Text="Create / Edit Plan" CssClass="btn btn-primary" OnClick="btnCreate_Click" CommandArgument="Create" />
                &nbsp; &nbsp;
                <asp:Button runat="server" ID="btnView" Text="View Plan" CssClass="btn btn-primary" OnClick="btnCreate_Click"  CommandArgument="View"/>
                &nbsp; &nbsp;
                &nbsp; &nbsp;
                <asp:Button runat="server" ID="btnDownload" Text="Download Plan PPT" CssClass="btn btn-primary" OnClick="btnDownload_Click"/>
            </div>

        </div>
    </div>
</asp:Content>
