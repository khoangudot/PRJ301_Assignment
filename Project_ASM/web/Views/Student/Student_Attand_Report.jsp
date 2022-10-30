<%-- 
    Document   : Student_Attand_Report
    Created on : Oct 29, 2022, 11:47:03 PM
    Author     : MrKhoaz
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head><meta http-equiv="X-UA-Compatible" content="IE=Edge" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" /><title>
            View attendance for student
        </title><link rel="Stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" type="text/css" />
        <link rel="Stylesheet" href="../Style/fu.css" type="text/css" />
        <link rel="Stylesheet" href="../Style/JavaScript/jquery.css" type="text/css" />
        <link rel="Stylesheet" href="../Style/JavaScript/jquery-ui.css" type="text/css" />
        <link rel="Stylesheet" href="../Style/JavaScript/jquery.alerts.css" type="text/css" />
        <script src="../Style/JavaScript/jquery.min.js" type="f305eb6e0661c2ae2cd1aa74-text/javascript"></script>
        <script src="../Style/JavaScript/jquery_002.js" type="f305eb6e0661c2ae2cd1aa74-text/javascript"></script>
        <script src="../Style/JavaScript/jquery_003.js" type="f305eb6e0661c2ae2cd1aa74-text/javascript"></script>
        <script src="../Style/JavaScript/jquery.js" type="f305eb6e0661c2ae2cd1aa74-text/javascript"></script>
        <script src="../Style/JavaScript/jquery-1.8.3.js" type="f305eb6e0661c2ae2cd1aa74-text/javascript"></script>
        <script src="../Style/JavaScript/jquery-ui.js" type="f305eb6e0661c2ae2cd1aa74-text/javascript"></script>
        <script src="../Style/JavaScript/jquery.alerts.js" type="f305eb6e0661c2ae2cd1aa74-text/javascript"></script>
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
                                    <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width: 120px; height: 40px" alt="apple store" /></a></td>
                            <td><a href="https://play.google.com/store/apps/details?id=com.fuct">
                                    <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width: 120px; height: 40px" alt="google store" /></a></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">

                    <div>
                        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="6AEC5B00" />
                    </div>
                    <div id="ctl00_divUser" style="float: right; margin-right: 16px;">
                        <a href="?view=user">
                            <span id="ctl00_lblLogIn" class="label label-success">khoanvhe153692</span></a> | <a href="?logout=true" class="label label-success">logout</a> |
                        <span id="ctl00_lblCampusName" class="label label-success"> CAMPUS: FPTU-Hòa Lạc</span>
                    </div>
                    <ol class="breadcrumb">
                        <li>
                            <span id="ctl00_lblNavigation"><a href='../Style/Student.aspx'>Home</a>&nbsp;|&nbsp;<b>Schedule Exam</b></span></li>
                    </ol>
                    <table>
                        <tr style="border-bottom: 0 none">
                            <td>
                                <div>
                                    <h2>View attendance for <span id="ctl00_mainContent_lblStudent">Nguyễn Việt Khoa (KhoaNVHE153692)</span></h2>
                                    <font style="font-weight: bold"> </font>
                                    <table>
                                        <tbody>
                                            <tr><td valign="top"><h3>Select a campus/program, term, course ...</h3>

                                                    <%--Select Course--%>
                                                    <table summary='Select a course' >

                                                        Course:
                                                        <c:forEach items="${requestScope.listGroupOfStudent}" var="g">
                                                            
                                                            <tr><td valign='top'><div id="ctl00_mainContent_divCampus"><a href="attend?studentId=${param.studentId}&subjectId=${g.subject.subjectId}">${g.subject.subjectName}</a> </div></td></tr>

                                                        </c:forEach>


                                                        <td valign='top'><div id="ctl00_mainContent_divTerm"> 


                                                                </tbody>
                                                                </table>


                                                                <div id="ctl00_mainContent_divDetail"> <td valign='top'><h3>... then see report<br /><br /></h3>
                                                                        ${param.subjectId}<br/>
                                                                        <table class='table table-bordered table1' border="1px" >
                                                                            <tr><thead> <th>No.</th><th>Date</th><th>Slot</th><th>Room</th><th>Lecturer</th><th>Group Name</th><th>Attedance status</th><th>Lecturer's comment</th></tr></thead>
                                                                            <tbody>
                                                                              
                                                                                <c:forEach items="${requestScope.studentAttendReport}" var="attReport">
                                                                                    <tr>
                                                                                        <td>${attReport.session.index}</td>
                                                                                        <td><span class='label label-primary'>${attReport.session.date}</span>
                                                                                        </td><td><span class='label label-danger'>Slot ${attReport.session.timeSlot.id}(${attReport.session.timeSlot.description})</span>
                                                                                        </td><td>${attReport.session.room.roomName}</td><td>${attReport.session.lecturer.lecturerId}</td>
                                                                                        <td>${attReport.session.group.groupName}</td>
                                                                                        <td>
                                                                                            
                                                                                                <c:if test="${!attReport.present}">
                                                                                                        <font color=red>Absent</font>
                                                                                                 </c:if>
                                                                                                 <c:if test="${attReport.present}">
                                                                                                 <font color="blue">Attended</font>
                                                                                                 </c:if>
                                                                                        </td>
                                                                                        <td>${attReport.description}</td>
                                                                                    </tr>
                                                                                </c:forEach>
                                                                            </tbody> 
                                                                            <tfoot><tr><td colspan='7'><b>Absent</b>: ${requestScope.percentAbsent}% absent so far (${requestScope.numOfAbsent} absent on ${requestScope.numOfSlot}).</td></tr></tfoot>
                                                                        </table>

                                                                        </tr>
                                                                        </tbody>
                                                                        </table>
                                                                </div>
                                                        </td>
                                                        </tr>
                                                        <tr style="border-bottom: 0 none">
                                                            <td>
                                                                <br />
                                                                <table width="100%" style="border: 1px solid transparent;" id="cssTable">
                                                                    <tr>
                                                                        <td>
                                                                            <div id="ctl00_divSupport">
                                                                                <br />
                                                                                <b>Mọi góp ý, thắc mắc xin liên hệ: </b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Phòng dịch vụ sinh viên</span>: Email: <a href="/cdn-cgi/l/email-protection#94f0fdf7fce2e1e7fdfafce2fdf1fad4f2f1baf1f0e1bae2fa"><span class="__cf_email__" data-cfemail="9cf8f5fff4eae9eff5f2f4eaf5f9f2dcfaf9b2f9f8e9b2eaf2">[email&#160;protected]</span></a>.
                                                                                Điện thoại: <span class="style1" style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">(024)7308.13.13 </span>
                                                                                <br />
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <p style="text-align: center">
                                                                                © Powered by <a href="http://fpt.edu.vn" target="_blank">FPT University</a>&nbsp;|&nbsp;
                                                                                <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
                                                                                <span id="ctl00_lblHelpdesk"></span>
                                                                            </p>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                    </div>
                                                    </div>
                                                    </div>



                                                    </body>
                                                    </html>
