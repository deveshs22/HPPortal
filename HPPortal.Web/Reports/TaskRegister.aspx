<%@ Page Title="Task Resgister" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="TaskRegister.aspx.cs" Inherits="HPPortal.Web.Reports.TaskRegister" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
   &nbsp;
    <div class="panel panel-default form-horizontal">
            
       <div class="panel-heading">
                
                <h2 class="panel-title">Task Register</h2>
             
            </div>
           
    <div class="panel-body">
  <div style="background-color:beige">
  <div class="row" style="padding-top:5px;">
                    <div class="col-md-4">
                        <div id="div1" class="form-group">
                            <asp:Label ID="Label1" runat="server" CssClass="col-md-4 control-label" Text="User:" />
                            <div class="col-md-8">
                                <asp:DropDownList
                                    ID="ddlPartner"
                                    SelectMethod="GetUser"
                                    DataTextField="Name"
                                    DataValueField="UserId"
                                    CssClass="form-control"
                                    Width="250px"
                                    AppendDataBoundItems="true"
                                    runat="server">
                                    <asp:ListItem Text="Select / All" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            
                        </div>
                    </div>

                  

      <div class="col-md-5">
                        <div id="div22" class="form-group">
                            <asp:Label ID="Label2" runat="server" CssClass="col-md-3 control-label" Text="Quarter:" />
                            <div class="col-md-9">
                                <asp:DropDownList
                                    ID="ddlQuarter"
                                    CssClass="maxWidth form-control"
                                    runat="server"
                                    Width="250px"
                                    SelectMethod="GetQuarter"
                                     DataTextField="QuarterYear"
                                    DataValueField="QuarterYear">
                            </asp:DropDownList>
                            </div>
                           
                        </div>
                    </div>
       <div class="col-md-3">
                      <asp:Button CssClass="btn btn-primary" Text="Search"  runat="server" id="btnSearch" OnClick="btnSearch_Click"/>
                    </div>
                </div>
  </div>
        
        <asp:ListView ID="ListView1" runat="server"
            DataKeyNames="PartnerId" 
            ItemType="HPPortal.Web.Models.TasksViewModel"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Tasks
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
                                S.No.
                            </th>
                            <th>
                                <asp:LinkButton Text="Partner Name" CommandName="Sort" CommandArgument="PartnerName" runat="Server" />
                            </th>
                             <th>
                                <asp:LinkButton Text="Category" CommandName="Sort" CommandArgument="PartnerCategoryId" runat="Server" />
                            </th>
                                                      
                            <th>
                                <asp:LinkButton Text="City" CommandName="Sort" CommandArgument="CityId" runat="Server" />
                            </th>
                            
                            <th>
                                <asp:LinkButton Text="Task Module" CommandName="Sort" CommandArgument="TaskModule" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Action / Strategy" CommandName="Sort" CommandArgument="TaskDetail" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Assigned Users" CommandName="Sort" CommandArgument="UserName" runat="Server" />
                            </th>
                          </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
                <asp:DataPager PageSize="12" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
                </asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                    <%# Container.DataItemIndex+1 %>
                        </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="PartnerName" ID="PartnerName" Mode="ReadOnly" />
                    </td>
                     <td>
                        <asp:DynamicControl runat="server" DataField="Category" ID="DynamicControl1" Mode="ReadOnly" />
                    </td>
                     <td>
                        <asp:DynamicControl runat="server" DataField="City" ID="DynamicControl2" Mode="ReadOnly" />
                    </td>
                    
                     <td>
                        <asp:DynamicControl runat="server" DataField="TaskModule" ID="DynamicControl4" Mode="ReadOnly" />
                    </td>
                     <td>
                        <asp:DynamicControl runat="server" HtmlEncode="false" UIHint="MultilineText" DataField="TaskDetail" ID="DynamicControl5" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="UserName" ID="DynamicControl6" Mode="ReadOnly" />
                    </td>

                   
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
   </div>
</asp:Content>

