<%-- 
    Document   : Login
    Created on : Oct 26, 2022, 10:15:29 PM
    Author     : MrKhoaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <!-- Mirrored from fap.fpt.edu.vn/Phuhuynh/Login.aspx by HTTrack Website Copier/3.x [XR&CO'2008], Wed, 12 Oct 2022 15:33:01 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8"><!-- /Added by HTTrack -->
        <head><title>
                Đăng nhập
            </title><link rel="Stylesheet" href="../../cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" type="text/css" /><link rel="Stylesheet" href="../fu.css" type="text/css" /><link rel="Stylesheet" href="../JavaScript/jquery.css" type="text/css" /><link rel="Stylesheet" href="../JavaScript/jquery-ui.css" type="text/css" /><link rel="Stylesheet" href="../JavaScript/jquery.alerts.css" type="text/css" />

            <script src="../JavaScript/jquery.min.js" type="text/javascript"></script>

            <script src="../JavaScript/jquery_002.js" type="text/javascript"></script>

            <script src="../JavaScript/jquery_003.js" type="text/javascript"></script>

            <script src="../JavaScript/jquery.js" type="text/javascript"></script>

            <script src="../JavaScript/jquery-1.8.3.js" type="text/javascript"></script>

            <script src="../JavaScript/jquery-ui.js" type="text/javascript"></script>

            <script src="../JavaScript/jquery.alerts.js" type="text/javascript"></script>

            <link rel="Stylesheet" href="../Content/bootstrap.css" type="text/css" /><link rel="Stylesheet" href="../Content/bootstrap.min.css" type="text/css" /><link rel="Stylesheet" href="../Content/bootstrap-theme.min.css" type="text/css" />

            <style type="text/css">
                .style1 {
                    font-weight: bold;
                }
            </style>

        </head>
        <body>
            <div class="logo">
            </div>
            <div style="position: absolute; top: 8px; left: 256px; width: 824px;">
                <h1 style="text-align: center">Academic Portal</h1>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />





            <span id="ctl00_lblNavigation"><b>Trang chủ</b></span>
            <hr />
            <div>

                <div class="container">

                    <form action="../../../Login" method="post">
                        <center>
                            <fieldset >
                                <legend><b>Người dùng đăng nhập (Donor Login)</b></legend>
                                <table>
                                    <tbody><tr>
                                            <td>Chọn cở sở đào tạo:</td>
                                            <td>
                                                <select>
                                                    <option  value="0">--Chọn--</option>
                                                    <option value="3" selected="selected">FU-H&#242;a Lạc</option>
                                                    <option value="4">FU-Hồ Ch&#237; Minh</option>
                                                    <option value="5">FU-Đ&#224; Nẵng</option>
                                                    <option value="6">FU-Cần Thơ</option>
                                                    <option value="7">FU-Quy Nhơn</option>

                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>UserName:</td>
                                            <td>
                                                <input   type="text" name="username" placeholder="Username"  /></td>
                                        </tr>
                                        <tr>
                                            <td>PassWord:</td>
                                            <td>
                                                <input type="password" name="password"  placeholder="Password" /></td>
                                        </tr>

                                        <tr>
                                            <td></td>
                                            <td >
                                                <input type="submit"  value="Login" />              
                                                <input  type="checkbox"/>Nhớ mật khẩu</td>
                                            <tr>
                                                <td colspan="2">
                                                    <span id="ctl00_mainContent_lblError" style="color:Red;"></span>
                                                </td>
                                            </tr>	
                                    </tbody></table>
                            </fieldset>

                        </center>
                    </form>
                </div>

            </div>
            <hr />
            <p style="text-align: center">
                © 2012 Powered by <a href="http://fpt.edu.vn/" target="_blank">FPT University</a>&nbsp;|&nbsp;
                <a href="http://cms.fpt.edu.vn/" target="_blank">News</a>&nbsp;|&nbsp; <a href="#">Comments</a>
            </p>
        </body>

        <!-- Mirrored from fap.fpt.edu.vn/Phuhuynh/Login.aspx by HTTrack Website Copier/3.x [XR&CO'2008], Wed, 12 Oct 2022 15:33:01 GMT -->
        <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8"><!-- /Added by HTTrack -->
            </html>
