<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditApproval.aspx.cs" Inherits="FP_MobileApp.EditApproval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
     <link href="Content/loader.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div class="loader">
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
                <br />
                <br />
                <div style="align-content: center"><span>Processing..</span></div>
            </div>

        </div>

        <div role="form">
              <div id="success" class="alert alert-success" style="display:none">
                <strong>Success!</strong> created successfully.
            </div>
            <div id="failed" class="alert alert-danger" style="display:none">
                <strong>Fauild!</strong> operation did not end successfully .
            </div>
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" href="#GenInformation">General Information</a>
                        </h4>
                    </div>
                    <div id="GenInformation" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Approval Status</label>
                                        <select id="ApprovalStatus" name="ApprovalStatus" class="form-control">
                                        </select>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Ticket Number</label>
                                        <label id="ticket_number" class="form-control"></label>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Request Type</label>
                                        <%--<select id="requestType" name="requestType" class="form-control">
                                        </select>--%>
                                        <label id="requestType" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Main Category</label>
                                        <%--<select id="mainCategory" name="mainCategory" class="form-control">
                                        </select>--%>
                                        <label id="mainCategory" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Sub Category</label>
                                        <%--  <select id="subCategory" name="subCategory" class="form-control">
                                        </select>--%>
                                        <label id="subCategory" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Short Description</label>
                                        <input type="text" class="form-control border-input" placeholder="Short Description" id="ShortDescription" name="ShortDescription" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Description</label>

                                        <textarea rows="5" class="form-control border-input" placeholder="Description" id="Description" name="Description"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" href="#EmployeeInfo">Employee Information</a>
                        </h4>
                    </div>
                    <div id="EmployeeInfo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Bank Name</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Bank Name" id="BankName" name="BankName" />--%>
                                        <label id="BankName" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Beneficiary Name</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Beneficiary Name" id="BeneficiaryName" name="BeneficiaryName" />--%>
                                        <label id="BeneficiaryName" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amount</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Amount" id="Amount" name="Amount" />--%>
                                        <label id="Amount" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amount Required</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Amount Required" id="AmountRequired" name="AmountRequired" />--%>
                                        <label id="AmountRequired" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amount in numbers</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Amount in numbers" id="Amountinnumbers" name="Amountinnumbers" />--%>
                                        <label id="Amountinnumbers" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Department</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Department" id="Department" name="Department" />--%>
                                        <label id="Department" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Petty cash type</label>
                                        <%--<select id="Pettycashtype" name="Pettycashtype" class="form-control">
                                        </select>--%>
                                        <label id="Pettycashtype" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Purpose of Petty cash</label>
                                        <%--<select id="PurposeofPettycash" name="PurposeofPettycash" class="form-control">
                                        </select>--%>
                                        <label id="PurposeofPettycash" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Writing Amount</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Writing Amount" id="WritingAmount" name="WritingAmount" />--%>
                                        <label id="WritingAmount" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Activity Name</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Activity Name" id="ActivityName" name="ActivityName" />--%>
                                        <label id="ActivityName" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amendment Required</label>
                                        <%--<select id="AmendmentRequired" name="AmendmentRequired" class="form-control">
                                        </select>--%>
                                        <label id="AmendmentRequired" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amendment Type</label>
                                        <%--<select id="AmendmentType" name="AmendmentType" class="form-control">
                                        </select>--%>
                                        <label id="AmendmentType" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Directory Name</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Directory Name" id="DirectoryName" name="DirectoryName" />--%>
                                        <label id="DirectoryName" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Proposed Amendment</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Proposed Amendment" id="ProposedAmendment" name="ProposedAmendment" />--%>
                                        <label id="ProposedAmendment" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Purpose of Amendment</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Purpose of Amendment" id="PurposeofAmendment" name="PurposeofAmendment" />--%>
                                        <label id="PurposeofAmendment" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amount required SR</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Amount required SR" id="AmountrequiredSR" name="AmountrequiredSR" />--%>
                                        <label id="AmountrequiredSR" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Only SR</label>
                                        <%--<input type="text" class="form-control border-input" placeholder="Only SR" id="OnlySR" name="OnlySR" />--%>
                                        <label id="OnlySR" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Location</label>
                                        <%--  <input type="text" class="form-control border-input" placeholder="Location" id="Location" name="Location" />--%>
                                        <label id="Location" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Access Door</label>
                                        <%--<select id="AccessDoor" name="AccessDoor" class="form-control">
                                        </select>--%>
                                        <label id="AccessDoor" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Access Time</label>
                                        <%--                                        <select id="accesstime" name="accesstime" class="form-control">
                                        </select>--%>
                                        <label id="AccessTime" class="form-control"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
             <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <input id="btnSmmit" type="button" class="btn btn-primary btn-lg pull-left" value="Save" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="Scripts/Lookups.js"></script>
    <script src="Scripts/displayCrtl.js"></script>
    <script type="text/javascript">
        var rid;
        $(function () {
            $("#ApprovalStatus").generateLookup({ passid: 3 })
            $(".loader").fadeOut();
            rid = GetParameterValues("rid");
            /*-------------------------------------------------*/
            var jsonDocument = "../JSON/controlRander.json";
            var data = dataLoader();
            /*------------------------------------------------*/
            $("#ApprovalStatus").prop('selectedIndex', '0');
            $("#ticket_number").text(data[0].ticket_number);
            $("#requestType").text(data[0].request_type);
            $("#mainCategory").text(data[0].main_category_1);
            $("#subCategory").text(data[0].sub_category_1);
            $("#ShortDescription").val(data[0].title);
            $("#ShortDescription").attr('readonly', 'readonly');
            $("#Description").val(data[0].description);
            $("#Description").attr('readonly', 'readonly');
            $("#mainCategory").displayCtrl({ CtrValue: data[0].main_category_1 });
            $("#subCategory").displayCtrl({ CtrValue: data[0].sub_category_1 });
            /*------------------------------------------------*/
            $.getJSON(jsonDocument, function (j) {
                for (var key in j) {
                    var row = j[key];
                    $.each(data[0], function (key, value) {
                        if (row.DBName == key) {
                            $("#" + row.ControlID).text(value);
                        }
                    });
                }
            })
        });
        function GetParameterValues(param) {
            var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < url.length; i++) {
                var urlparam = url[i].split('=');
                if (urlparam[0] == param) {
                    return urlparam[1];
                }
            }
            return "";
        }
        function dataLoader() {
            loader();
            jqXHR = $.ajax({
                type: "POST",
                url: "Handlers/MyRequest.ashx",
                data: { id: 2,  Rid: rid },
                async: false,
                success: function (d) {
                    hideLoader();
                }
            });
            if (jqXHR.responseText != "") {
                return JSON.parse(jqXHR.responseText);
            }
        }
        $("#btnSmmit").on('click', function () {
            $(".loader").fadeIn();
            $("#success").css("display", "none");
            $("#failed").css("display", "none");
            var datas = []
            datas = getCtrForm();
            datas.id = 2;
            datas.tid = rid;
            $.ajax({
                type: "POST",
                url: "Handlers/EditTicket.ashx",
                data: datas,
                success: function (d) {
                    $("#success").css("display", "block");
                    $(".loader").fadeOut();
                }
            }).error(function (d) {
                $("#failed").css("display", "block");
                $(".loader").fadeOut();

            }).done(function () {
                $(".loader").fadeOut();
            });
        });
        function loader() {
            $(".loader").fadeIn();
        }
        function hideLoader() {
            $(".loader").fadeOut();
        }
        function getCtrForm() {
            datajs = [];
            var values = {};
            $("form :text, textarea, select").each(function () {
                var ctrID = $(this).attr('id');
                if ($(this).parent().css('display') !== 'none') {
                    if ($("#" + ctrID).is("select")) {
                        values[ctrID] = $("#" + ctrID + " option:selected").text();
                    } else if ($("#" + ctrID).is("textarea")) {
                        values[ctrID] = $("#" + ctrID).text();
                    }
                    else {
                        values[ctrID] = $("#" + ctrID).val();
                    }
                }
            });
            return values;
        }
    </script>
</asp:Content>
