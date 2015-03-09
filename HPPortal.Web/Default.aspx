<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HPPortal.Web._Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="/Content/simple.min.css" rel="stylesheet">

    <div>
        &nbsp;
    </div>
    <fieldset class="form-horizontal">
        <div class="col-md-8">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <asp:Label runat="server" ID="lblQuarter"> </asp:Label>
                </h3>
            </div>
            <div class="panel-body">
                <div class="table">
                                       

                    <asp:ListView ID="ListView1" runat="server"
                        DataKeyNames="CityDescription"
                        ItemType="HPPortal.Web.Models.PerformanceViewModel">
                        <EmptyDataTemplate>
                            Performance Data not found..
                        </EmptyDataTemplate>
                        <LayoutTemplate>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>
                                            
                                            <asp:LinkButton Text="City " runat="Server" ID="lnkCity"/>
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
                                <td style="padding-top: 15px;">
                                    <asp:LinkButton runat="server" OnClick="btnNavigate_Click" Text='<%# Item.CityDescription %>' CommandArgument='<%# Item.CityId %>'></asp:LinkButton>


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
                    <asp:Chart ID="perfChart" runat="server" ToolTip="Performance chart" EnableViewState="True">
                        <Series>
                            <asp:Series ChartType="Column" Name="Series1">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisY>
                                    <MajorGrid LineColor="#eeeeee" />
                                </AxisY>
                                <AxisX>
                                    <MajorGrid LineColor="#eeeeee" />
                                </AxisX>
                                <Area3DStyle Inclination="10" Rotation="5" />
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </div>
            </div>

           </div>

            <div class="col-md-4">
                <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">User Activity Log
                    </h3>
                </div>
                <div class="panel-body" style="height:600px">
                    <ul id="scroller">
                                              
                
                    <asp:ListView ID="listActivityLog" runat="server"
                        DataKeyNames="LogId"
                        ItemType="HPPortal.Data.Models.ActivityLog"
                        >
                        <EmptyDataTemplate>
                            Activity Log not found..
                        </EmptyDataTemplate>
                       
                        <ItemTemplate>
                            <li style="list-style: none;">
                                 <label style="width:90px; color:#428bca; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Updated Date</label>: 
                                    &nbsp; <%#: Item.LogDate.ToString("dd:MM:yyyy HH:mm") %>
                               <br />
                                 <label style="width:90px; color:#428bca;  font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Updated By</label>:   &nbsp; <%#: Item.User.Name %>
                                <br />
                                <label style="width:90px; color:#428bca;  font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Partner</label>:  &nbsp; <%#: Item.Partner.PartnerName %>
                               <br />
                                <label style="width:90px; color:#428bca;  font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Plan Module</label>:  &nbsp;  <%#: Item.Module %>
                            <hr style="margin-top:5px; margin-bottom:10px;" />        
                                </li>

                            
                        </ItemTemplate>
                    </asp:ListView>
                            </ul>
                
                </div>
            </div>
              
        
    </fieldset>
    


<script src="/Scripts/jquery.marquee.min.js"></script>
<script type="text/javascript">
    $(function(){

        
         $('#scroller').marquee({

         // enable the plugin
         enable: true,  //plug-in is enabled

         // scroll direction
         // 'vertical' or 'horizontal'
         direction: 'vertical',

         // children items
         itemSelecter: 'li',

         // animation delay
         delay: 4000,

         // animation speed
         speed: 1,

         // animation timing
         timing: 3,

         // mouse hover to stop the scroller
         mouse: true

     });
 
     

 });
</script>

</asp:Content>
