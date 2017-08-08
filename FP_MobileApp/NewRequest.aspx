<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewRequest.aspx.cs" Inherits="FP_MobileApp.NewRequest" %>

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
                            <a id="aGenInformation"  data-toggle="collapse" href="#GenInformation">General Information</a>
                        </h4>
                    </div>
                    <div id="GenInformation" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Request Type</label>
                                        <select id="requestType" name="requestType" class="form-control">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Main Category</label>
                                        <select id="mainCategory" name="mainCategory" class="form-control">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label >Sub Category</label>
                                        <select id="subCategory" name="subCategory" class="form-control">
                                        </select>
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
                            <a id="aEmployeeInfo" data-toggle="collapse" href="#EmployeeInfo">Employee Information</a>
                        </h4>
                    </div>
                    <div id="EmployeeInfo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Bank Name</label>
                                        <input type="text" class="form-control border-input" placeholder="Bank Name" id="BankName" name="BankName" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Beneficiary Name</label>
                                        <input type="text" class="form-control border-input" placeholder="Beneficiary Name" id="BeneficiaryName" name="BeneficiaryName" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amount</label>
                                        <input type="text" class="form-control border-input" placeholder="Amount" id="Amount" name="Amount" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amount Required</label>
                                        <input type="text" class="form-control border-input" placeholder="Amount Required" id="AmountRequired" name="AmountRequired" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amount in numbers</label>
                                        <input type="text" class="form-control border-input" placeholder="Amount in numbers" id="Amountinnumbers" name="Amountinnumbers" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Department</label>
                                        <input type="text" class="form-control border-input" placeholder="Department" id="Department" name="Department" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Petty cash type</label>
                                        <select id="Pettycashtype" name="Pettycashtype" class="form-control">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Purpose of Petty cash</label>
                                        <select id="PurposeofPettycash" name="PurposeofPettycash" class="form-control">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Writing Amount</label>
                                        <input type="text" class="form-control border-input" placeholder="Writing Amount" id="WritingAmount" name="WritingAmount" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Activity Name</label>
                                        <input type="text" class="form-control border-input" placeholder="Activity Name" id="ActivityName" name="ActivityName" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amendment Required</label>
                                        <select id="AmendmentRequired" name="AmendmentRequired" class="form-control">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amendment Type</label>
                                        <select id="AmendmentType" name="AmendmentType" class="form-control">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Directory Name</label>
                                        <input type="text" class="form-control border-input" placeholder="Directory Name" id="DirectoryName" name="DirectoryName" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Proposed Amendment</label>
                                        <input type="text" class="form-control border-input" placeholder="Proposed Amendment" id="ProposedAmendment" name="ProposedAmendment" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Purpose of Amendment</label>
                                        <input type="text" class="form-control border-input" placeholder="Purpose of Amendment" id="PurposeofAmendment" name="PurposeofAmendment" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Amount required SR</label>
                                        <input type="text" class="form-control border-input" placeholder="Amount required SR" id="AmountrequiredSR" name="AmountrequiredSR" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Only SR</label>
                                        <input type="text" class="form-control border-input" placeholder="Only SR" id="OnlySR" name="OnlySR" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Location</label>
                                        <input type="text" class="form-control border-input" placeholder="Location" id="Location" name="Location" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Access Door</label>
                                        <select id="AccessDoor" name="AccessDoor" class="form-control">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" style="display: none">
                                        <label>Access Time</label>
                                        <select id="AccessTime" name="AccessTime" class="form-control">
                                        </select>
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
    <script src="Scripts/LangLoader.js"></script>
    <script type="text/javascript">
        datajs = [];
        $(function () {
            $(".loader").fadeOut();
            $('ul.nav > li').each(function () {

                $(this).removeClass('active');

            });
            $('form').langLoader({ lang: 'Ar', pagename: "NewRequest" });
            $('#NewRequests').addClass('active');
            $("#requestType").generateLookup({ passid: 2, valCode: 1 });
            $("#requestType").change(function () {
                $("#mainCategory").generateLookup({ passid: 2, valCode: 2, valPass: $("#requestType option:selected").val() });
            });
            $("#mainCategory").change(function () {
                $("#subCategory").generateLookup({ passid: 2, valCode: 3, valPass: $("#mainCategory option:selected").val() });
                $("#mainCategory").displayCtrl({ CtrValue: $("#mainCategory option:selected").text() });
            });
            $("#subCategory").on('change', function () {

                $("#subCategory").displayCtrl({ CtrValue: $("#subCategory option:selected").text() });
            });
            formReset();
            $("#btnSmmit").on('click', function () {
                $(".loader").fadeIn();
                $("#success").css("display", "none");
                $("#failed").css("display", "none");
                var datas = []
                datas = getCtrForm();
                datas.id = 2;

                $.ajax({
                    type: "POST",
                    url: "Handlers/CreateTicket.ashx",
                    data: datas,
                    success: function (d) {
                        $("#success").css("display","block");
                        $(".loader").fadeOut();
                        formReset();
                    }
                }).error(function (d) {
                    $("#failed").css("display", "block");
                    $(".loader").fadeOut();

                });


           

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
        function formReset()
        {
            $('form :text, textarea, select').each(function () {

                var ctrID = $(this).attr('id');
                if ($("#"+ctrID).is("select")) {
                    $('#' + ctrID ).prop('selectedIndex','0');
                } else if ($("#" + ctrID).is("textarea")) {
                    $('#' + ctrID).val('');
                } else {
                    $('#' + ctrID).val('');
                }



            })
        }
        function selectreset() {
            $('form select').each(function () {
                var ctrID = $(this).attr('id');
                $('#' + ctrID).prop('selectedIndex', '0');

            });
        }
    </script>
</asp:Content>
