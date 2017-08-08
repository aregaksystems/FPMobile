<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FP_MobileApp.Account.Login1" EnableViewState="False" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Paper Dashboard by Creative Tim</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet" />

    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet" />

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/themify-icons.css" rel="stylesheet">
    <link href="../Content/loader.css" rel="stylesheet" />
</head>
<body>
    <div class="loader">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
            <br />
            <br />
            <div style="align-content: center"><span>Processing..</span></div>
        </div>

    </div>
    <div class="wrapper">
        <div class="sidebar" data-background-color="white" data-active-color="danger">

            <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->


        </div>

        <div class="main-panel">



            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="row">
                            <div class="col-lg-3 col-md-3"></div>
                            <div class="col-lg-6 col-md-6">
                                <img src="assets/img/logo.png" style="position: relative; top: 50%; left: 20%;" alt="" />
                            </div>
                            <div class="col-lg-3 col-md-3"></div>
                        </div>

                        <div class="col-lg-12 col-md-12" style="vertical-align: middle">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">User Login</h4>
                                </div>
                                <div class="content">
                                    <form runat="server">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="alert alert-danger" id="alert" runat="server" visible="false">
                                                     username or password is wrong please try again !
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>User Name</label>
                                                    <asp:TextBox ID="username" runat="server" class="form-control border-input" placeholder="User Name"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ValidationGroup="a" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Password</label>
                                                    <asp:TextBox ID="pwd" runat="server" class="form-control border-input" placeholder="Password" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd" ValidationGroup="a" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="text-center">

                                            <asp:Button ID="submit" runat="server" Text="Login" class="btn btn-info btn-fill btn-wd" ValidationGroup="a" OnClick="submit_Click" />
                                        </div>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>


            <footer class="footer">
                <div class="container-fluid">

                    <div class="copyright pull-right">
                    </div>
                </div>
            </footer>

        </div>
    </div>


</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="assets/js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->


<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>
<script type="text/javascript">
    $(".loader").fadeOut();
    $(function () {
        $("#submit").on('click', function () {
            $(".loader").fadeIn();
            


        });


    });
    function getForm() {
        var values = {};
        $('form :text, :password').each(function () {

            var id = $(this).attr('id');
            values[id] = $(this).val();
        });
        return values;
    }
</script>

</html>
