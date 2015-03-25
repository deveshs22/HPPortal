<%@ Page Title="PartnerList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Partner.aspx.cs" Inherits="HPPortal.Web.Reports.PartnerReport" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
   &nbsp;
    <div class="panel panel-default form-horizontal">
            
       <div class="panel-heading">
                
                <h2 class="panel-title">Partners</h2>
             
            </div>
           
    <div class="panel-body">
  <div style="background-color:beige">
  <div class="row" style="padding-top:5px;">
                    <div class="col-md-5">
                        <div id="div1" class="form-group">
                            <asp:Label ID="Label1" runat="server" CssClass="col-md-4 control-label" Text="Partner Category:" />
                            <div class="col-md-8">
                                <asp:DropDownList
                                    ID="ddlPartner"
                                    SelectMethod="GetPartnerCategory"
                                    DataTextField="Description"
                                    DataValueField="PartnerCategoryId"
                                    CssClass="form-control"
                                    Width="250px"
                                    AppendDataBoundItems="true"
                                    runat="server">
                                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div id="div2" class="form-group">
                            <asp:Label ID="Zone" runat="server" CssClass="col-md-2 control-label" Text="Zone:" />
                            <div class="col-md-10">
                                <asp:DropDownList
                                    ID="ddlZone"
                                    CssClass="maxWidth form-control"
                                    AppendDataBoundItems="true"
                                    runat="server"
                                    Width="250px"
                                    SelectMethod="GetZone"
                                     DataTextField="Description"
                                    DataValueField="ZoneId">
                                    <asp:ListItem Text="Select Zone" Value="0"></asp:ListItem>
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
            ItemType="HPPortal.Data.Models.Partner"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Partner
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
                                <asp:LinkButton Text="Contact Person" CommandName="Sort" CommandArgument="ContactPerson" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Email" CommandName="Sort" CommandArgument="Email" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Phone" CommandName="Sort" CommandArgument="Phone" runat="Server" />
                            </th>

                           
                            <th>
                                <asp:LinkButton Text="City" CommandName="Sort" CommandArgument="CityId" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Account Manager" CommandName="Sort" CommandArgument="AssociatedUserId" runat="Server" />
                            </th>
                            <th>&nbsp;</th>
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
                        <div style="padding-top: 7px;"><%#: Item.PartnerCategory != null ? Item.PartnerCategory.Description : "" %></div>
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="ContactPerson" ID="ContactPerson" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Phone" ID="Phone" Mode="ReadOnly" />
                    </td>

                   
                    <td>
                        <div style="padding-top: 7px;"><%#: Item.City != null ? Item.City.Description : "" %></div>
                    </td>
                    <td>
                        <div style="padding-top: 7px;"><%#: Item.User != null ? Item.User.Name : "" %></div>
                    </td>

                    <td>
                       </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
   </div>
</asp:Content>

