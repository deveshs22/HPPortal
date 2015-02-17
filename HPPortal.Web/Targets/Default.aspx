<%@ Page Title="UserInsert" Language="C#" MasterPageFile="~/Site.Master" EnableViewState="true" CodeBehind="Default.aspx.cs" Inherits="HPPortal.Web.Targets.Default" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

    <div>
        <br />
        <br />
     <div class="form-horizontal">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductId" 
                OnDataBound="GridView1_DataBound1" GridLines="Horizontal" OnRowCreated="GridView1_RowCreated">
                  <Columns>
                    <asp:BoundField DataField="ProductDescription" HeaderText="Category"  />
                    <asp:BoundField DataField="ProductCategory"  ControlStyle-CssClass="form-control" />
                    <asp:TemplateField>
                        <%--<HeaderTemplate>
                            <asp:Label ID="lblM1" runat="server"></asp:Label>
                        </HeaderTemplate>--%>
                        <ItemTemplate>
                           <asp:TextBox ID="txtM1" runat="server" TextMode="Number" Text='<%# Eval("M1") %>' CssClass="form-control DDTextBox" ></asp:TextBox>
                            <asp:HiddenField ID="hdnTargetId" runat="server" Value='<%# Eval("TargetId") %>' />
                        </ItemTemplate>
                        <ItemStyle Width="80px" />
                    </asp:TemplateField>

                    <asp:TemplateField>
                       <%-- <HeaderTemplate>
                            <asp:Label ID="lblM2" runat="server"></asp:Label>
                        </HeaderTemplate>--%>
                        <ItemTemplate>
                           <asp:TextBox ID="txtM2" runat="server" TextMode="Number" Text='<%# Eval("M2") %>' CssClass="form-control DDTextBox" ></asp:TextBox>
                        </ItemTemplate>
                        <ItemStyle Width="80px" />
                    </asp:TemplateField>

                    <asp:TemplateField>
                       <%-- <HeaderTemplate>
                            <asp:Label ID="lblM3" runat="server"></asp:Label>
                        </HeaderTemplate>--%>
                        <ItemTemplate>
                           <asp:TextBox ID="txtM3" runat="server" TextMode="Number" Text='<%# Eval("M3") %>' CssClass="form-control DDTextBox" ></asp:TextBox>
                        </ItemTemplate>
                        <ItemStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="QuarterTotal" HeaderText="Quarter Total" />
                    <asp:BoundField DataField="PrevQtr" HeaderText="Prev Qtr"/>
                    <asp:BoundField DataField="YoY" HeaderText="YoY" />
                    <asp:BoundField DataField="PrevYrQtr" HeaderText="Prev Yr Qtr" />
                </Columns>
            </asp:GridView>
            
           </div>
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" CssClass="btn btn-primary" />
    </div>
   </asp:Content>
