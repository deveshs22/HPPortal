<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HPPortal.Web._Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       
    <div>
        &nbsp;
    </div>
    <fieldset class="form-horizontal">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><asp:Label runat="server" ID="lblQuarter"> </asp:Label> </h3>
        </div>
        <div class="panel-body">
            <div class="table">
                <asp:ListView ID="ListView1" runat="server"
                    DataKeyNames="CityDescription"
                    ItemType="HPPortal.Web.Models.PerformanceViewModel"
                    SelectMethod="GetData">
                    <EmptyDataTemplate>
                        Performance Data not found..
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>

                                        <asp:LinkButton Text="City " CommandName="Sort" CommandArgument="CityDescription" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Target ($K)" CommandName="Sort" CommandArgument="TargetAmount" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Sales ($K)" CommandName="Sort" CommandArgument="SalesAmount" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Achieved% ($K)" CommandName="Sort" CommandArgument="AchievedAmount" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Target (Unit)" CommandName="Sort" CommandArgument="TargetUnit" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Sales(Unit)" CommandName="Sort" CommandArgument="SalesUnit" runat="Server" />
                                    </th>
                                    <th>
                                        <asp:LinkButton Text="Achieved% (Unit)" CommandName="Sort" CommandArgument="AchievedUnit" runat="Server" />
                                    </th>
                                 </tr>
                            </thead>
                            <tbody>
                                <tr runat="server" id="itemPlaceholder" />
                            </tbody>
                        </table>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:DynamicControl runat="server" DataField="CityDescription" ID="CityDescription" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="TargetAmount" ID="TargetAmount" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="SalesAmount" ID="SalesAmount" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="AchievedAmount" ID="AchievedAmount" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="TargetUnit" ID="TargetUnit" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="SalesUnit" ID="SalesUnit" Mode="ReadOnly" />
                            </td>
                            <td>
                                <asp:DynamicControl runat="server" DataField="AchievedUnit" ID="AchievedUnit" Mode="ReadOnly" />
                            </td>
                            </tr>
                    </ItemTemplate>
                </asp:ListView>

            </div>
        </div>
    </div>
    <div class="panel panel-info">
         <div class="panel-body">
            <asp:Chart ID="perfChart" runat="server" ToolTip="Performance chart">
                 <series>
                     <asp:Series ChartType="Column" Name="Series1">
                     </asp:Series>
                 </series>
                 <chartareas>
                     <asp:ChartArea Name="ChartArea1">
                         <Area3DStyle Inclination="10" Rotation="5" />
                     </asp:ChartArea>
                 </chartareas>
             </asp:Chart>
        </div>
    </div>
        </fieldset>

</asp:Content>
