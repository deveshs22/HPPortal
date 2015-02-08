<%@ Page Title="UserInsert" Language="C#" MasterPageFile="~/Site.Master" EnableViewState="true" CodeBehind="AddUser.aspx.cs" Inherits="HPPortal.Web.Users.AddUser" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">

        <div>
            <p>&nbsp;</p>
            <fieldset class="form-horizontal">
                <legend>Insert User</legend>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <span class="col-md-3 control-label">Email Address</span>
                            <div class="col-md-7">
                                <asp:TextBox ID="txtEmail" CssClass="form-control DDTextBox" ValidateRequestMode="Enabled" runat="server" TextMode="Email" />
                                <asp:RequiredFieldValidator ID="emailReq" runat="server" CssClass="validation" ErrorMessage="Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                    runat="server" ErrorMessage="Please Enter Valid Email ID"
                                    ControlToValidate="txtEmail"
                                    CssClass="validation"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                </asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-3 control-label">Password</span>
                            <div class="col-md-7">
                                <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control DDTextBox" ValidateRequestMode="Enabled" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validation" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-3 control-label">Name</span>
                            <div class="col-md-7">
                                <asp:TextBox ID="txtName" CssClass="form-control DDTextBox" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validation" runat="server" ErrorMessage="Required" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-3 control-label">Mobile</span>
                            <div class="col-md-7">
                                <asp:TextBox ID="txtPhone" CssClass="form-control DDTextBox" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validation" runat="server" ErrorMessage="Required" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                    ControlToValidate="txtPhone"
                                    ValidationExpression="\d{10}"
                                    ErrorMessage="Mobile number must be 10 numeric digits"
                                    EnableClientScript="False"
                                    CssClass="validation"
                                    runat="server" />
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-3 control-label">Roles</span>
                            <div class="col-md-7">
                                <asp:DropDownList ID="ddlRoles" CssClass="form-control maxWidth" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="validation" ErrorMessage="Required" ControlToValidate="ddlRoles" InitialValue="0"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-3 control-label">Reporting</span>
                            <div class="col-md-7">
                                <asp:DropDownList ID="ddlReporting" CssClass="form-control maxWidth" OnSelectedIndexChanged="ddlReporting_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="validation" ErrorMessage="Required" ControlToValidate="ddlReporting" InitialValue="0"></asp:RequiredFieldValidator>

                            </div>
                        </div>                                  

                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <h4>Select City</h4>
                            <div>
                                <p><asp:Label ID="lblNoReporting" Text="Please select Reporting Person to get City list" style="color:gray;" runat="server"></asp:Label></p>
                                <asp:TreeView ID="treeViewCity" ShowCheckBoxes="All" runat="server">
                                </asp:TreeView>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button runat="server" ID="InsertButton" OnClick="btnInsertClick" Text="Save" CssClass="btn btn-primary" />
                        <asp:Button runat="server" ID="CancelButton" OnClick="btnCancelClick" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                    </div>
                </div>
            </fieldset>
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
