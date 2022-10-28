<%-- 
    Document   : Default
    Created on : Oct 27, 2022, 3:37:09 PM
    Author     : MrKhoaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <!-- Mirrored from fap.fpt.edu.vn/Default.aspx by HTTrack Website Copier/3.x [XR&CO'2008], Wed, 12 Oct 2022 15:32:37 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8"><!-- /Added by HTTrack -->
        <head><meta http-equiv="X-UA-Compatible" content="IE=Edge" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" /><title>
                FPT University Academic Portal
            </title><link rel="Stylesheet" href="../cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" type="text/css" />
            <link rel="Stylesheet" href="..//Style/fu.css" type="text/css" />
            <link rel="Stylesheet" href="../Style/JavaScript/jquery.css" type="text/css" />
            <link rel="Stylesheet" href="../Style/JavaScript/jquery-ui.css" type="text/css" />
            <link rel="Stylesheet" href="../Style/JavaScript/jquery.alerts.css" type="text/css" />

            <script src="../Style/JavaScript/jquery.min.js" type="text/javascript"></script>

            <script src="../Style/JavaScript/jquery_002.js" type="text/javascript"></script>

            <script src="../Style/JavaScript/jquery_003.js" type="text/javascript"></script>

            <script src="../Style/JavaScript/jquery.js" type="text/javascript"></script>

            <script src="../Style/../Style/JavaScript/jquery-1.8.3.js" type="text/javascript"></script>

            <script src="../Style/JavaScript/jquery-ui.js" type="text/javascript"></script>

            <script src="../Style/JavaScript/jquery.alerts.js" type="text/javascript"></script>

            <link rel="Stylesheet" href="../Style/Content/bootstrap.css" type="text/css" />
            <link rel="Stylesheet" href="../Style/Content/bootstrap.min.css" type="text/css" />
            <link rel="Stylesheet" href="../Style/Content/bootstrap-theme.min.css" type="text/css" />

            <style type="text/css">
                .style1 {
                    font-weight: bold;
                }
            </style>

        </head>

        <body>
            <div class="container">

                <div class="row">

                    <div class="col-md-8">

                        <h1><span>FPT University Academic Portal</span>
                        </h1>

                    </div>
                    <div class="col-md-4">
                        <table>
                            <tr>
                                <td colspan="2" class="auto-style1"><strong>FAP mobile app (myFAP) is ready at</strong></td>

                            </tr>
                            <tr>
                                <td><a href="https://apps.apple.com/app/id1527723314">
                                        <img src="../Style/images/app-store.svg" style="width: 120px; height: 40px" alt="apple store" /></a></td>
                                <td><a href="https://play.google.com/store/apps/details?id=com.fuct">
                                        <img src="../Style/images/play-store.svg" style="width: 120px; height: 40px" alt="google store" /></a></td>

                            </tr>
                        </table>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">

                        <ol class="breadcrumb">
                            <li>
                                <span id="ctl00_lblNavigation"></span></li>
                        </ol>
                        <table>
                            <tr style="border-bottom: 0 none">
                                <div id="ctl00_mainContent_divcontent">

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div style="border: solid 1px #ccc; height: 150px;">
                                                <fieldset>
                                                    <legend><span class="label label-default  btn-warning"><b>Phụ huynh</b></span></legend>
                                                    <div style="margin-top: -15px">
                                                        <a href="login/Login.jsp">
                                                            <h3>
                                                                <span class="btn btn-primary"><b>Đăng nhập</b></span></h3>
                                                        </a>
                                                    </div>
                                                </fieldset>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div style="border: solid 1px #ccc; height: 150px;">
                                                <fieldset>
                                                    <legend><span class="label label-default  btn-warning"><b>Sinh viên, Giảng viên, Cán bộ ĐH-FPT</b></span></legend>
                                                    <br />
                                                    <div id="loginform" 
                                                         vertical-align: central">
                                                        <center>

                                                            <div class="row">
                                                                <div class="col-sm-4">

                                                                    <select name="ctl00$mainContent$ddlCampus" onchange="change()" id="select_campus" class="btn btn-default">
                                                                        <option selected="selected" value="">Select Campus</option>
                                                                        <option value="3">FU-H&#242;a Lạc</option>
                                                                        <option value="4">FU-Hồ Ch&#237; Minh</option>
                                                                        <option value="5">FU-Đ&#224; Nẵng</option>
                                                                        <option value="6">FU-Cần Thơ</option>
                                                                        <option value="7">FU-Quy Nhơn</option>
                                                                    </select>
                                                                    <div style="margin-top: -62px; margin-left: 165px">
                                                                        <a href="../../Views/login/Student_Lecturer/Login.jsp">
                                                                            <h3>
                                                                                <span class="btn btn-primary"><b>Sign In</b></span></h3>
                                                                        </a>
                                                                    </div>
                                                                </div>


                                                                <br />

                                                        </center>
                                                    </div>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </div>

                                </div>


                                </div>
                                </td>
                            </tr>
                            <tr style="border-bottom: 0 none">
                                <td>
                                    <br />

                                    <table width="100%" style="border: 1px solid transparent;" id="cssTable">

                                        <tr>
                                            <td>
                                                <p style="text-align: center">
                                                    © Powered by <a href="http://fpt.edu.vn/" target="_blank">FPT University</a>&nbsp;|&nbsp;
                                                    <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn/" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com/" target="_blank">books24x7</a>
                                                    <span id="ctl00_lblHelpdesk"></span>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>

                                </td>
                            </tr>
                        </table>

                        </form>
                    </div>
                </div>
            </div>





        </body>

        <!-- Mirrored from fap.fpt.edu.vn/Default.aspx by HTTrack Website Copier/3.x [XR&CO'2008], Wed, 12 Oct 2022 15:32:46 GMT -->
        <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8"><!-- /Added by HTTrack -->
            </html>
