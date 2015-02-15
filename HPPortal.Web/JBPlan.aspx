<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JBPlan.aspx.cs" Inherits="HPPortal.Web.JBPlan" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        &nbsp;
    </div>
    <div class="row form-horizontal">

        <div class="row col-md-offset-1 col-md-8">
            <div class="row col-md-12">
                <h3 style="align-content: center">Welcome to HP JB Plan Creation</h3>
                <hr />
            </div>
            <div class="row">
                <div class="col-md-7">
                    <div id="div1" class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label h4" Text="Partner:" />
                        <div class="col-md-8">
                            <asp:DropDownList
                                ID="ddlPartner"
                                SelectMethod="GetPartners"
                                DataTextField="PartnerName"
                                DataValueField="PartnerId"
                                CssClass="form-control"
                                Width="300px"
                                AppendDataBoundItems="true"
                                runat="server">
                                <asp:ListItem Text="Select Partner" Value=""></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="col-md-5">
                    <div id="div2" class="form-group">
                        <asp:Label ID="Quarter" runat="server" CssClass="col-md-3 control-label h4" Text="Quarter:" />
                        <div class="col-md-8">
                            <asp:DropDownList
                                ID="ddlQuarter"
                                SelectMethod="GetQuarters"
                                DataTextField="QuarterYear"
                                DataValueField="QuarterId"
                                CssClass="maxWidth form-control"
                                AppendDataBoundItems="true"
                                runat="server">
                                <asp:ListItem Text="Select Quarter" Value=""></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
            <asp:Button runat="server" ID="btnCreate" Text="Create / Edit Plan" CssClass="btn btn-primary" OnClick="btnCreate_Click" />
        </div>
    </div>
</asp:Content>
