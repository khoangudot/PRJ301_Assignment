<%-- 
    Document   : TakeAttandance
    Created on : Oct 25, 2022, 2:27:25 PM
    Author     : MrKhoaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<html lang="en">

    <head>
        <title>Check Attend</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>

        <h1>Fpt University</h1>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Fap </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
                    aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Time Table </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">List Student</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <h1>Single Activity Attendance</h1>
            <p >Attendance for <b>Session ${requestScope.session.index}</b> with Lecturer <b>${requestScope.session.lecturer.lecturerId}
                </b> at Slot <b>${requestScope.session.timeSlot.id}</b> on Day <b>${requestScope.session.date}
                </b> in Room <b>${requestScope.session.room.roomName}</b> at FU-HL</p>
            <div style="width: 100%;">
                <form action="takeatt" style="position: relative;padding-bottom: 50px;" method="post">

                    <table class="table" border="1" >
                        <thead>
                            <tr>
                                <th style="width:5%">Index</th>
                                <th style="width:5%">Group</th>
                                <th style="width:10%">Code</th>
                                <th style="width:17.5%">Name</th>
                                <th style="width:12.5%">Image</th>
                                <th style="width:15%">Status</th>
                                <th style="width:10%">Commnent</th>
                                <th style="width:5%">Taker</th>
                                <th style="width:20%">RecordTime</th>
                            </tr>
                        </thead>


                        <tbody>

                            <% int no  = 1;%>
                            <c:forEach items="${requestScope.attandances}" var="a">
                                <tr>
                                    <td style="width: 5%">index</td>
                                    <td style="width:10%">${requestScope.session.group.groupName}    </td>
                                    <td style="width:10%">${a.student.studentId}</td>
                                    <td style="width:12.5%">${a.student.studentName}</td>
                                    <td style="width:12.5%"><img src= "${a.student.image}" width="120px"></td>
                                    <td style="width: 15%">    
                                        <input type="radio" name="takeAtt"  value="" checked="1"/>absent
                                        <input type="radio" name="takeAtt"   value=""/>attend
                                    </td>
                                    <td style="width:10%"></td>
                                    <td style="width:5%">sonnt</td>    
                                    <td style="width:20%"></td>
                                </tr>
                            </c:forEach>




                        <input style="position: absolute; bottom: 5px; right: 0;" type="submit" value="Submit" style="align-items: flex-end" class="btn btn-primary">
                        </tbody>
                    </table>
                </form>

            </div>
        </div>



        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    </body>

</html>