<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HPPortal.Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Dashboard</h2>
        
    </div>

    <div class="row">
        <div class="col-md-3">
           <img src="Content/images/UserImg.png" height="350px" width="140px" />
        </div>
        <div class="col-md-5">
           <table style="border:solid; width:430px; border-color:black; border-width:thin">
               <tr style="font-weight:bold">
                   <td>Zones</td>
                   <td style="text-align:center">Targets</td>
                   <td style="text-align:center">Achieved</td>
                   <td style="text-align:center">%age</td>
                   <td style="text-align:center">Previous Month</td>
               </tr>
               <tr>
                   <td>North-1</td>
                   <td style="text-align:center">500</td>
                   <td style="text-align:center">450</td>
                   <td style="color:blue; text-align:center">90%</td>
                   <td style="text-align:center">200</td>
               </tr>
               <tr>
                   <td>North-2</td>
                   <td style="text-align:center">350</td>
                   <td style="text-align:center">315</td>
                   <td style="color:blue; text-align:center">90%</td>
                   <td style="text-align:center">100</td>
               </tr>
                <tr>
                   <td>North-3</td>
                   <td style="text-align:center">450</td>
                   <td style="text-align:center">355</td>
                   <td style="color:blue; text-align:center">79%</td>
                   <td style="text-align:center">150</td>
               </tr>
                <tr>
                   <td>East</td>
                   <td style="text-align:center">200</td>
                   <td style="text-align:center">200</td>
                   <td style="color:blue; text-align:center">100%</td>
                   <td style="text-align:center">80</td>
               </tr>
           </table>
            </br>
               <img src="Content/images/Graph.png" height="220px" width="430px" />
        </div>
        <div class="col-md-4">
           
        </div>
    </div>

</asp:Content>
