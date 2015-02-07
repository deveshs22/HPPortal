<%@ Page Title="UserList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="HPPortal.Web.Users.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div class="col-md-3">
            <h2>Users List</h2>
        </div>
        <div class="col-md-2">
            <br />
            <div class="btn btn-default">
                <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
            </div>
        </div>
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="UserId"
                ItemType="HPPortal.Data.Models.User"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for Users
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>
                                    <asp:LinkButton Text="Email Address" CommandName="Sort" CommandArgument="EmailId" runat="Server" />
                                </th>

                                <th>
                                    <asp:LinkButton Text="Name" CommandName="Sort" CommandArgument="Name" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Role" CommandName="Sort" CommandArgument="RoleId" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="Reporting Manager" CommandName="Sort" CommandArgument="ReportingId" runat="Server" />
                                </th>

                                <th>
                                    <asp:LinkButton Text="Mobile Number" CommandName="Sort" CommandArgument="Mobile" runat="Server" />
                                </th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr runat="server" id="itemPlaceholder" />
                        </tbody>
                    </table>
                    <asp:DataPager PageSize="5" runat="server">
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
                            <asp:DynamicControl runat="server" DataField="EmailId" ID="EmailId" Mode="ReadOnly" />
                        </td>

                        <td>
                            <asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
                        </td>
                        <td>
                            <%#: Item.Role != null ? Item.Role.Description : "" %>
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="ReportingId" ID="ReportingId" Mode="ReadOnly" />
                        </td>

                        <td>
                            <asp:DynamicControl runat="server" DataField="Mobile" ID="Mobile" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Users/Details", Item.UserId) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Users/Edit", Item.UserId) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Users/Delete", Item.UserId) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

