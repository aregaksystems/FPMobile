<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyRequests.aspx.cs" Inherits="FP_MobileApp.MyRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div role="form">
     <div class="row">
            <table id="table" 
                data-toggle="table"
                data-search="true"
                data-toolbar="#toolbar"
                data-height="460"
                data-pagination="true"
                data-url="../Handlers/MyRequest.ashx?id=2&userID=<%=HttpContext.Current.User.Identity.Name%>"
                data-click-to-select="true">
                <thead>
                    <tr>
                        <th data-field="ticket_number">ticket number </th>
                        <th data-field="title">subject</th>
                        <th data-field="action" data-formatter="actionFormatter" data-events="actionEvents"></th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>
    <div style="clear:both"></div>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.js"></script>
    <script type="text/javascript">
        var Data;
        
        function actionFormatter(value, row, index) {
            return [
                '<a style="height:56px;width:56px" class="like" href="javascript:void(0)" title="view">',
                '<i class="glyphicon glyphicon-random"></i>',
                '</a>',
                
                '<a style="height:56px;width:56px" class="edit ml10" href="javascript:void(0)" title="Edit">',
                '<i class="glyphicon glyphicon-edit"></i>',
                '</a>'
            ].join(' ');
        }

        window.actionEvents = {
            'click .like': function (e, value, row, index) {
                var id = row.id;
                window.location = "RequestReview.aspx?rid=" + id;

               
                
               
            },
            'click .edit': function (e, value, row, index) {
                var id = row.id;
                window.location = "EditRequest.aspx?rid=" + id;
            }
        };

        $(function () {
            $('ul.nav > li').each(function () {

                $(this).removeClass('active');

            });
            $('#MyRequests').addClass('active');

        });

    </script>
</asp:Content>
