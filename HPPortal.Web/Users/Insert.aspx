<%@ Page Title="UserInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="HPPortal.Web.Users.Insert" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <h2>Insert User</h2>
        <div class="col-md-6">
            <p>&nbsp;</p>
            <asp:FormView runat="server"
                ItemType="HPPortal.Data.Models.User" DefaultMode="Insert"
                insertitemposition="FirstItem" InsertMethod="InsertItem"
                OnItemCommand="ItemCommand" RenderOuterTable="false">
                <InsertItemTemplate>
                    <fieldset class="form-horizontal">
                        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                        <asp:DynamicControl Mode="Insert" DataField="EmailId" runat="server" />
                        <asp:DynamicControl Mode="Insert" DataField="Pwd" runat="server" />
                        <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" />
                        <asp:DynamicControl Mode="Insert"
                            DataField="RoleId"
                            DataTypeName="HPPortal.Data.Models.Role"
                            DataTextField="Description"
                            DataValueField="RoleId"
                            UIHint="ForeignKey" runat="server" />
                        <asp:DynamicControl Mode="Insert"
                            DataField="ReportingId"
                            DataTypeName="HPPortal.Data.Models.User"
                            DataTextField="Name"
                            DataValueField="UserId"
                            UIHint="ForeignKey" runat="server" />

                        <asp:DynamicControl Mode="Insert" DataField="Mobile" runat="server" />
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                                <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                            </div>
                        </div>
                    </fieldset>
                </InsertItemTemplate>
            </asp:FormView>
        </div>

        <div class="col-md-6">
            <p style="margin-top: 100px;"></p>
            <h3>Select City</h3>
            <asp:TreeView ID="treeViewCity" ShowCheckBoxes="All" runat="server">
            </asp:TreeView>
        </div>
    </div>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("[id*=treeViewCity] input[type=checkbox]").bind("click", function () {
                var table = $(this).closest("table");
                if (table.next().length > 0 && table.next()[0].tagName == "DIV") {
                    //Is Parent CheckBox
                    var childDiv = table.next();
                    var isChecked = $(this).is(":checked");
                    $("input[type=checkbox]", childDiv).each(function () {
                        if (isChecked) {
                            $(this).attr("checked", "checked");
                        } else {
                            $(this).removeAttr("checked");
                        }
                    });
                } else {
                    //Is Child CheckBox
                    var parentDIV = $(this).closest("DIV");
                    if ($("input[type=checkbox]", parentDIV).length == $("input[type=checkbox]:checked", parentDIV).length) {
                        $("input[type=checkbox]", parentDIV.prev()).attr("checked", "checked");
                    } else {
                        $("input[type=checkbox]", parentDIV.prev()).removeAttr("checked");
                    }
                }
            });
        })

    </script>
</asp:Content>
