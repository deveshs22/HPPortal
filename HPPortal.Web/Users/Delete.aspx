﻿<%@ Page Title="UserDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="HPPortal.Web.Users.Delete" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <p>&nbsp;</p>
        <h3>Are you sure want to delete this User?</h3>
        <asp:Label ID="lblDeleteFailed" runat="server" CssClass="validation" Style="display: none;" Text="There are reportees assigned to this user. Please remove the reportees before deleting this."></asp:Label>
        <asp:FormView runat="server"
            ItemType="HPPortal.Data.Models.User" DataKeyNames="UserId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the User with UserId <%: Request.QueryString["UserId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete User</legend>
                    <%--<div class="row">
								<div class="col-sm-2 text-right">
									<strong>UserId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="UserId" ID="UserId" Mode="ReadOnly" />
								</div>--%>
							</div>
							<div class="row">
                                <div class="col-sm-2 text-right">
                                    <strong>Email Address</strong>
                                </div>
                                <div class="col-sm-4">
                                    <asp:DynamicControl runat="server" DataField="EmailId" ID="EmailId" Mode="ReadOnly" />
                                </div>
                            </div>
                    <%--<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Pwd</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Pwd" ID="Pwd" Mode="ReadOnly" />
								</div>
							</div>--%>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <strong>Name</strong>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <strong>Mobile</strong>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="Mobile" ID="Mobile" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <strong>RoleId</strong>
                        </div>
                        <div class="col-sm-4">
                            <%#: Item.Role != null ? Item.Role.Description : "" %>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <strong>ReportingId</strong>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="ReportingId" ID="ReportingId" Mode="ReadOnly" />
                            <%--  <asp:DynamicControl Mode="ReadOnly"
                                DataField="ReportingId"
                                DataTypeName="HPPortal.Data.Models.User"
                                DataTextField="Name"
                                DataValueField="UserId"
                                UIHint="ForeignKey" runat="server" />--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2 text-right">
                            <strong>Active</strong>
                        </div>
                        <div class="col-sm-4">
                            <asp:DynamicControl runat="server" DataField="Active" ID="Active" Mode="ReadOnly" />
                        </div>
                    </div>
                    <div class="row">
                        &nbsp;
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
                        </div>
                    </div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

