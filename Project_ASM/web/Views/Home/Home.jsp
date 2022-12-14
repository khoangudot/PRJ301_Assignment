<%-- 
    Document   : newjsp
    Created on : Oct 27, 2022, 1:27:28 AM
    Author     : MrKhoaz
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head><meta http-equiv="X-UA-Compatible" content="IE=Edge" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" /><title>
            FPT University Academic Portal
        </title><link rel="Stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" type="text/css" /><link rel="Stylesheet" href="fu.css" type="text/css" /><link rel="Stylesheet" href="JavaScript/jquery.css" type="text/css" /><link rel="Stylesheet" href="JavaScript/jquery-ui.css" type="text/css" /><link rel="Stylesheet" href="JavaScript/jquery.alerts.css" type="text/css" />

        <script src="../JavaScript/jquery.min.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery_002.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery_003.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery-1.8.3.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery-ui.js" type="text/javascript"></script>

        <script src="../JavaScript/jquery.alerts.js" type="text/javascript"></script>

        <link rel="Stylesheet" href="Content/bootstrap.css" type="text/css" /><link rel="Stylesheet" href="Content/bootstrap.min.css" type="text/css" /><link rel="Stylesheet" href="Content/bootstrap-theme.min.css" type="text/css" />

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

                    <div id="ctl00_divUser" style="float: right; margin-right: 16px;">
                        <a href="?view=user">
                            <span id="ctl00_lblLogIn" class="label label-success">${sessionScope.account.username}</span></a> 
                            | <a href="logout" class="label label-success">Logout</a> |
                        <span id="ctl00_lblCampusName" class="label label-success"> CAMPUS: FPTU-H??a L???c</span>
                    </div>
                    <ol class="breadcrumb">
                        <li>
                            <span id="ctl00_lblNavigation"><b>&nbsp;</b></span></li>
                    </ol>
                    <table>
                        <tr style="border-bottom: 0 none">
                            <td>
                                <div>

                                    <style>
                                        #displayed {
                                            display: block;
                                            margin-left: auto;
                                            margin-right: auto;
                                        }
                                    </style>
                                    <div class="row">
                                        <div id="ctl00_mainContent_divMain">

                                            <div class="box topAthletes">
                                                <h3 class="blueTitle" style="float: left; width: 40%">News</h3>
                                                <div class="listBoxWrapper">

                                                    <b>Tin t???c </b><a class="btn btn-warning" href="">xem t???i ????y</a>
                                                    <br />
                                                    <br />

                                                </div>
                                                <div class="listBoxWrapper">

                                                    <style type="text/css">
                                                        .auto-style2 {
                                                            color: #FFFFFF;
                                                            text-align: center;
                                                            font-weight: bold;
                                                            background-color: #3366CC;
                                                        }
                                                        .auto-style3 {
                                                            text-align: left;
                                                        }
                                                    </style>

                                                </div>
                                            </div>

                                            <div class="box" style="float: right; width: 60%">
                                                <h3 class="orangeTitle">Academic Information</h3>
                                                <div class="listBoxWrapper">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <table>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td colspan="2">
                                                                                <br/>
                                                                                <br/>
                                                                                <input name="ctl00$mainContent$txtVideo" type="text" id="ctl00_mainContent_txtVideo" class="form-control" placeholder="Nh???p URL video qu?? tr??nh test-covid ???? upload l??n Youtube" />
                                                                                <span id="ctl00_mainContent_lblTest" style="font-weight: 700; color: #FF3300"></span>




                                                                                <span id="ctl00_mainContent_lblThongbao"></span>
                                                                                <br />
                                                                                <div id="ctl00_mainContent_noteLuk">
                                                                                    Sinh vi??n h???c LUK ????ng k?? h???c online v??o theo link sau : <a href="https://bit.ly/K17P5HN-HocOnline" target="_blank">https://bit.ly/K17P5HN-HocOnline</a>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top" style="width: 55%;">
                                                                                <h4>Registration/Application(Th??? t???c/????n t???)</h4>

                                                                                <ul>
                                                                                    <li><a href="FrontOffice/AddApplication.aspx?code=R1">Suspend one semester to take repeated course</a>&nbsp;|&nbsp; <a href="FrontOffice/RemoveApplication.aspx?code=R1">Cancel</a> (Xin t???m ho??n ti???n ????? m???t h???c k???
                                                                                        ????? h???c l???i | H???y b??? vi???c xin t???m ho??n)</li>
                                                                                    <li><a href="FrontOffice/AddApplication.aspx?code=R2">Suspend one semester</a>&nbsp;|&nbsp;
                                                                                        <a href="FrontOffice/RemoveApplication.aspx?code=R2">Cancel</a> (Xin t???m ngh??? m???t h???c k??? | H???y b??? vi???c xin t???m ngh???)</li>
                                                                                    <li><a href="FrontOffice/Courses.aspx">Move out class </a>(Xin chuy???n l???p)</li>
                                                                                    <li><a href="FrontOffice/RegisterCourse.aspx?code=R3">Register extra courses</a> (????ng k?? m??n h???c ??i ch???m k???)</li>
                                                                                    <li><a href="FrontOffice/RegisterCourse.aspx?code=R4">Register to improve mark </a>&nbsp;(????ng k?? h???c c???i thi???n ??i???m)</li>
                                                                                    <li><a href="FrontOffice/RegisterCourse.aspx?code=R5">Register to repeat a course</a> (????ng k?? h???c l???i)</li>
                                                                                    <li><a href="FrontOffice/RegisteredCourses.aspx">Cancel registration </a>(H???y ????ng k?? h???c)</li>
                                                                                    <li><a href="FrontOffice/RegisterElective.aspx">Register Free Elective Courses </a>(????ng k?? m??n t??? ch???n)</li>
                                                                                    <li><a href="App/SendAcad.aspx">Send Application</a> (G???i ????n) |&nbsp; <a href="App/AcadAppView.aspx">View Application</a> (Xem ????n)</li>
                                                                                    <li><a href="App/AddApp.aspx">Xin x??c nh???n sinh vi??n</a></li>
                                                                                    <li><a href="FrontOffice/Shopping.aspx">Choose paid items (L???a ch???n c??c kho???n n???p)</a> - <a href="Report/DngRequests.aspx">View</a></li>
                                                                                    <li><a href="App/CourseChange.aspx">Y??u c???u ?????i ch??o l???p v???i sinh vi??n </a></li>




                                                                                </ul>
                                                                            </td>
                                                                            <td valign="top">
                                                                                <h4>Information Access(Tra c???u th??ng tin)</h4>
                                                                                <ul>

                                                                                    <li><a href="Course/Courses.aspx">University timetable </a>(L???ch h???c)</li>
                                                                                    <li><a href="FrontOffice/SubjectFees.aspx">Tuition fee per course</a> (Bi???u h???c ph??)</li>
                                                                                    <c:if test="${requestScope.student eq null }">
                                                                                        
                                                                                            <a href="student/timetable?studentId=${requestScope.student.studentId}">Weekly timetable </a>
                                                                                        </
                                                                                   </c:if>     
                                                                                            
                                                                                       <c:if test="${requestScope.lecturer eq null}" >
                                                                                        
                                                                                            <a href="timetable?lecturerId=${requestScope.lecturer.lecturerId}">(Th???i kh??a bi???u t???ng tu???n) </a>
                                                                                        
                                                                                   </c:if> 
                                                                                    
                                                                                    <li><a href="Schedule/FunixSchedule.aspx">Blended Online Course (BLOC) Schedules </a>(L???ch h???c c??c m??n theo ph????ng ph??p BLOC trong k???)</li>
                                                                                    <li><a href="Schedule/TimeTable.aspx">Class timetable</a> (Xem th???i kh??a bi???u c???a m???t l???p)</li>
                                                                                    <li><a href="Exam/ScheduleExams.aspx" target="_blank">View exam schedule </a>(Xem l???ch thi)
                                                                                      
                                                                                   
                                                                                  
                                                                                    <li><a href="http://flm.fpt.edu.vn" target="_blank">View Syllabuses</a>(Xem ????? c????ng m??n h???c)</li>

                                                                                    <li><a href="https://fap.fpt.edu.vn/temp/Regulations/Huong_dan_KTXH_tren_EduNext_Sp22_Sinh_Vien.pdf" target="_blank">EduNext student guideline</a> </li>


                                                                                    <span id="ctl00_mainContent_lblhelp"><li><a href='Report/Help.aspx' target='_blank'>Help/H??? tr???</a><img runat='server' id='img3' visible='true' </li></span>
                                                                                    <span id="ctl00_mainContent_lblOR"><li><a  href='https://fap.fpt.edu.vn/temp/Regulations/Slide_OR_student.rar' target='_blank'>T??i li???u h?????ng d???n: ?????nh h?????ng cho sinh vi??n</a><img runat='server' id='img2' src='images/New_icons_10.gif' alt='' /></li></span>


                                                                                </ul>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top">
                                                                                <h4>Feedback(?? ki???n)</h4>
                                                                                <ul>
                                                                                    <li><a href="Feedback/StudentFeedBack.aspx">Feedback about teaching</a> (?? ki???n v??? vi???c gi???ng d???y)</li>
                                                                                </ul>

                                                                            </td>
                                                                            <td valign="top">
                                                                                <h4>Reports(B??o c??o)</h4>
                                                                                <ul>
                                                                                    <li><a href="student/subjects?studentId=${requestScope.student.studentId}">Attendance report</a> (B??o c??o ??i???m danh)</li>
                                                                                    <li><a href="Grade/StudentGrade.aspx">Mark Report</a> (B??o c??o ??i???m)</li>
                                                                                    <li><a href="Grade/StudentTranscript.aspx">Academic Transcript</a> (B??o c??o ??i???m)</li>
                                                                                    <li><a href="FrontOffice/StudentCurriculum.aspx">Curriculum</a> (Khung ch????ng tr??nh)</li>
                                                                                    <li><a href="Report/StudentFees.aspx">Student Fee</a> (Tra c???u h???c ph?? ???? n???p theo k???)</li>
                                                                                    <li><a href="Finance/TransReport.aspx">Transaction history</a> (L???ch s??? giao d???ch)</li>
                                                                                </ul>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td valign="top">
                                                                                <h4>Others(Kh??c)</h4>
                                                                                <ul>

                                                                                    <li><a href="User/Profile.aspx">Student Profile</a>| <a href="User/verProfile.aspx">Update Profile</a></li>

                                                                                    <li><a href="Course/Terms.aspx">View semester</a>, <a href="Campus/Rooms.aspx">room</a> ( Xem th??ng tin v??? h???c k???, ph??ng)</li>
                                                                                    <li><a href="SuFunix.aspx">C??ng nh???n v?? chuy???n ?????i t??n ch??? c??c h???c ph???n c???a ?????i h???c tr???c tuy???n (FUNiX)</a></li>

                                                                                    <li><a href="FrontOffice/WishList.aspx">Danh s??ch c??c m??n h???c l???i ch??? x???p l???p</a></li>
                                                                                    <li><a href="Report/Awa.aspx">Ca??c loa??i ch????ng chi??</a></li>
                                                                                    <li><a href="Report/PrintReportFinalS.aspx">Report ??i???m phong tr??o</a></li>


                                                                                </ul>
                                                                            </td>
                                                                            <td>
                                                                                <h4>Regulations(C??c quy ?????nh)</h4>
                                                                                <ul>
                                                                                    <li><a href="User/Regulations.aspx" target="_blank">Regulations...</a></li>
                                                                                    <li><a href="https://fap.fpt.edu.vn/temp/Regulations/QD 272_new.pdf" target="_blank">Dormitory regulations (N???i quy KTX)</a></li>


                                                                                </ul>
                                                                            </td>

                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <h4>Courses on FPTU-Coursera</h4>
                                                                                <ul>
                                                                                    <li><a href="https://fap.fpt.edu.vn/temp/Regulations/FPTU-Coursera.pdf" target="_blank">Announcement</a></li>
                                                                                </ul>
                                                                                <ul>
                                                                                    <li><a href="SRS/AddQA.aspx" target="_blank">Ask mentor</a></li>
                                                                                </ul>
                                                                                <ul>
                                                                                    <li><a href="SRS/ViewQAS.aspx" target="_blank">View answer</a></li>
                                                                                </ul>
                                                                                <ul>
                                                                                    <li><a href="https://insideuni.fpt.edu.vn/13" target="_blank">Submit certificates</a></li>
                                                                                </ul>
                                                                                <ul>
                                                                                    <li><a href="https://fap.fpt.edu.vn/temp/Regulations/Coursera_certificates_submission_guidelines.pdf" target="_blank">Certificate submission guideline</a></li>
                                                                                </ul>
                                                                            </td>
                                                                            <td>
                                                                                <div id="ctl00_mainContent_divKTX" class="row">
                                                                                    <div class="panel-group">
                                                                                        <div class="panel panel-default">
                                                                                            <div class="panel-heading">Th??ng tin KTX </div>
                                                                                            <div class="panel-body">
                                                                                                <div id="ctl00_mainContent_divContent"><a href="https://ocd.fpt.edu.vn/">Th??ng tin KTX =>H??a L???c - On Campus Dormitory</a></div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </td>
                                                            <!--CMS News-->
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="ctl00_mainContent_divFed">
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
                                            <div id="ctl00_divSupport">
                                                <br />
                                                <b>M???i g??p ??, th???c m???c xin li??n h???: </b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Ph??ng d???ch v??? sinh vi??n</span>: Email: <a href="mailto:dichvusinhvien@fe.edu.vn">dichvusinhvien@fe.edu.vn</a>.
                                                ??i???n tho???i: <span class="style1"
                                                                  style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">(024)7308.13.13 </span>
                                                <br />

                                            </div>





                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <p style="text-align: center">
                                                ?? Powered by <a href="http://fpt.edu.vn" target="_blank">FPT University</a>&nbsp;|&nbsp;
                                                <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
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
</html>
