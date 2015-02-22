<%@ Page Title="Plans and Performance" Language="C#" MasterPageFile="~/Site.Master" EnableViewState="true" CodeBehind="PlanandPerformance.aspx.cs" Inherits="HPPortal.Web.Sales.PlanandPerformance" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

    <div>&nbsp;</div>
    <div class="well">
        <div class="row">
            <div class="col-md-offset-1 col-md-1 control-label">
                Partner:

            </div>
            <div class="col-md-2 control-label">

                <asp:Label ID="lblPartner" runat="server"></asp:Label>

            </div>

            <div class="col-md-2 control-label">
                Outlet Type:
            </div>
            <div class="col-md-2 control-label">

                <asp:Label ID="lblOutletType" runat="server"></asp:Label>

            </div>

            <div class="col-md-1 control-label">
                Quarter:
            </div>
            <div class="col-md-2 control-label">

                <asp:Label ID="lblQuater" runat="server"></asp:Label>

            </div>

        </div>
        <div class="row">
            <div class="col-md-offset-1 col-md-1 control-label">
                City:
            </div>
            <div class="col-md-2 control-label">

                <asp:Label ID="lblCity" runat="server"></asp:Label>

            </div>

            <div class="col-md-2 control-label">
                HP Account Manager:
            </div>
            <div class="col-md-2 control-label">

                <asp:Label ID="lblAccountManager" runat="server"></asp:Label>

            </div>
        </div>

    </div>
    <div class="btn-group btn-group-justified" role="group" aria-label="...">
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Strategic Plans" CommandArgument="StrategicPlans/Default.aspx" />
            <%-- <asp:HyperLink runat="server" Enabled="false" NavigateUrl="#" Text="Strategic Plans" />--%>
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" Text="Overview Plans" OnClick="btnNavigate_Click" CommandArgument="OverViewPlans/OverviewPlan.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Target Entry" CommandArgument="Targets/Default.aspx" />
        </div>
        <div class="btn btn-default">
            <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Primary Sales Entry" CommandArgument="Sales/Default.aspx" />
        </div>
        <div class="btn btn-primary">
            <span style="font-family: HPSimplified_Bd;">Plan and Performance</span>
        </div>
        <div class="btn btn-default">
                <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text="Open House" CommandArgument="OpenHouse/OpenHouseUI.aspx"/>
    </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Categorywise Plan and Performance</h3>
        </div>
        <div class="panel-body">

            <div class="form-horizontal">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductId"
                    OnDataBound="GridView1_DataBound1" OnRowDataBound="GridView1_RowDataBound" GridLines="None" OnRowCreated="GridView1_RowCreated" CssClass="table table-hover table-striped">
                    <Columns>
                        <asp:BoundField DataField="ProductDescription" HeaderText="Category" />
                        <asp:BoundField DataField="ProductCategory" HeaderText="ProductCategory" ControlStyle-CssClass="form-control" />
                        <asp:BoundField DataField="CQ1" HeaderText="CQ1" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="CQ2" HeaderText="CQ2" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="CQ3" HeaderText="CQ3" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="CQ4" HeaderText="CQ4" ItemStyle-HorizontalAlign="Center" />

                        <asp:BoundField DataField="PQ1" HeaderText="PQ1" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="PQ2" HeaderText="PQ2" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="PQ3" HeaderText="PQ3" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="PQ4" HeaderText="PQ4" ItemStyle-HorizontalAlign="Center" />

                        <asp:BoundField DataField="M1" HeaderText="M1" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="M2" HeaderText="M2" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="M3" HeaderText="M3" ItemStyle-HorizontalAlign="Center" />
                        <%-- <asp:BoundField DataField="QuarterTotal" HeaderText="Quarter Total" ItemStyle-HorizontalAlign="Center" />--%>
                        <%-- <asp:BoundField DataField="PrevQtr" HeaderText="Quantity" ItemStyle-HorizontalAlign="Center" />--%>
                        <asp:BoundField DataField="YoY" ItemStyle-HorizontalAlign="Center" />
                         <asp:BoundField DataField="SegGrowth" ItemStyle-HorizontalAlign="Center" />

                    </Columns>
                </asp:GridView>

            </div>

        </div>
    </div>
</asp:Content>
