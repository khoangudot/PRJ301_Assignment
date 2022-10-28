<%-- 
    Document   : Student_Attendance_Report
    Created on : Oct 28, 2022, 11:56:04 AM
    Author     : MrKhoaz
--%>

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
<script src="../Style/JavaScript/jquery.min.js" type="47f0fc9b3df51d650ae34fe0-text/javascript"></script>
<script src="../Style/JavaScript/jquery_002.js" type="47f0fc9b3df51d650ae34fe0-text/javascript"></script>
<script src="../Style/JavaScript/jquery_003.js" type="47f0fc9b3df51d650ae34fe0-text/javascript"></script>
<script src="../Style/JavaScript/jquery.js" type="47f0fc9b3df51d650ae34fe0-text/javascript"></script>
<script src="../Style/JavaScript/jquery-1.8.3.js" type="47f0fc9b3df51d650ae34fe0-text/javascript"></script>
<script src="../Style/JavaScript/jquery-ui.js" type="47f0fc9b3df51d650ae34fe0-text/javascript"></script>
<script src="../Style/JavaScript/jquery.alerts.js" type="47f0fc9b3df51d650ae34fe0-text/javascript"></script>
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
<form name="aspnetForm" method="post" action="./ViewAttendstudent.aspx" id="aspnetForm">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTczMjcwMjg4Mw9kFgJmD2QWAgIDD2QWCAIBDxYCHgdWaXNpYmxlZxYEAgEPDxYCHgRUZXh0BQ5raG9hbnZoZTE1MzY5MmRkAgMPDxYCHwEFGCBDQU1QVVM6IEZQVFUtSMOyYSBM4bqhY2RkAgMPDxYCHwEFDTxiPiZuYnNwOzwvYj5kZAIFD2QWCgIBDw8WAh8BBSVOZ3V54buFbiBWaeG7h3QgS2hvYSAoS2hvYU5WSEUxNTM2OTIpZGQCBQ8WAh4JaW5uZXJodG1sBS08dGFibGU+PHRyPjx0ZD48Yj5GVS1ITDwvYj48L3RkPjwvdHI+PC90YWJsZT5kAgcPFgIfAgWmCTx0YWJsZT48dHI+PHRkPjxhIGhyZWY9Ij9pZD1IRTE1MzY5MiZjYW1wdXM9MyZ0ZXJtPTE4Ij5TdW1tZXIyMDE3PC9hPjwvdGQ+PC90cj48dHI+PHRkPjxhIGhyZWY9Ij9pZD1IRTE1MzY5MiZjYW1wdXM9MyZ0ZXJtPTE5Ij5GYWxsMjAxNzwvYT48L3RkPjwvdHI+PHRyPjx0ZD48YSBocmVmPSI/aWQ9SEUxNTM2OTImY2FtcHVzPTMmdGVybT0yMCI+U3ByaW5nMjAxODwvYT48L3RkPjwvdHI+PHRyPjx0ZD48YSBocmVmPSI/aWQ9SEUxNTM2OTImY2FtcHVzPTMmdGVybT0yMSI+U3VtbWVyMjAxODwvYT48L3RkPjwvdHI+PHRyPjx0ZD48YSBocmVmPSI/aWQ9SEUxNTM2OTImY2FtcHVzPTMmdGVybT0yMiI+RmFsbDIwMTg8L2E+PC90ZD48L3RyPjx0cj48dGQ+PGEgaHJlZj0iP2lkPUhFMTUzNjkyJmNhbXB1cz0zJnRlcm09MjMiPlNwcmluZzIwMTk8L2E+PC90ZD48L3RyPjx0cj48dGQ+PGEgaHJlZj0iP2lkPUhFMTUzNjkyJmNhbXB1cz0zJnRlcm09MjQiPlN1bW1lcjIwMTk8L2E+PC90ZD48L3RyPjx0cj48dGQ+PGEgaHJlZj0iP2lkPUhFMTUzNjkyJmNhbXB1cz0zJnRlcm09MjUiPkZhbGwyMDE5PC9hPjwvdGQ+PC90cj48dHI+PHRkPjxhIGhyZWY9Ij9pZD1IRTE1MzY5MiZjYW1wdXM9MyZ0ZXJtPTI2Ij5TcHJpbmcyMDIwPC9hPjwvdGQ+PC90cj48dHI+PHRkPjxhIGhyZWY9Ij9pZD1IRTE1MzY5MiZjYW1wdXM9MyZ0ZXJtPTI3Ij5TdW1tZXIyMDIwPC9hPjwvdGQ+PC90cj48dHI+PHRkPjxhIGhyZWY9Ij9pZD1IRTE1MzY5MiZjYW1wdXM9MyZ0ZXJtPTI4Ij5GYWxsMjAyMDwvYT48L3RkPjwvdHI+PHRyPjx0ZD48YSBocmVmPSI/aWQ9SEUxNTM2OTImY2FtcHVzPTMmdGVybT0yOSI+U3ByaW5nMjAyMTwvYT48L3RkPjwvdHI+PHRyPjx0ZD48YSBocmVmPSI/aWQ9SEUxNTM2OTImY2FtcHVzPTMmdGVybT0zMCI+U3VtbWVyMjAyMTwvYT48L3RkPjwvdHI+PHRyPjx0ZD48YSBocmVmPSI/aWQ9SEUxNTM2OTImY2FtcHVzPTMmdGVybT0zMSI+RmFsbDIwMjE8L2E+PC90ZD48L3RyPjx0cj48dGQ+PGEgaHJlZj0iP2lkPUhFMTUzNjkyJmNhbXB1cz0zJnRlcm09MzIiPlNwcmluZzIwMjI8L2E+PC90ZD48L3RyPjx0cj48dGQ+PGEgaHJlZj0iP2lkPUhFMTUzNjkyJmNhbXB1cz0zJnRlcm09MzMiPlN1bW1lcjIwMjI8L2E+PC90ZD48L3RyPjx0cj48dGQ+PGI+RmFsbDIwMjI8L2I+PC90ZD48L3RyPjwvdGFibGU+ZAIJDxYCHwIFoQY8dGFibGU+PHRyPjx0ZD48Yj5KYXZhIFdlYiBBcHBsaWNhdGlvbiBEZXZlbG9wbWVudChQUkozMDEpKFBSSjMwMS5NMyxzdGFydCAwNS8wOS8yMDIyKTwvYj48L3RkPjwvdHI+PHRyPjx0ZD48YSBocmVmPSI/aWQ9SEUxNTM2OTImY2FtcHVzPTMmdGVybT0zNyZjb3Vyc2U9MjczOTciPkJhc2ljIENyb3NzLVBsYXRmb3JtIEFwcGxpY2F0aW9uIFByb2dyYW1taW5nIFdpdGggLk5FVChQUk4yMTEpPC9hPihTRTE2MzAtTkVULHN0YXJ0IDA1LzA5LzIwMjIpPC90ZD48L3RyPjx0cj48dGQ+PGEgaHJlZj0iP2lkPUhFMTUzNjkyJmNhbXB1cz0zJnRlcm09MzcmY291cnNlPTI3MjI5Ij5Tb2Z0d2FyZSBSZXF1aXJlbWVudChTV1IzMDIpPC9hPihTRTE2MjUtS1Msc3RhcnQgMDUvMDkvMjAyMik8L3RkPjwvdHI+PHRyPjx0ZD48YSBocmVmPSI/aWQ9SEUxNTM2OTImY2FtcHVzPTMmdGVybT0zNyZjb3Vyc2U9MjcyNTQiPlNvZnR3YXJlIFRlc3RpbmcoU1dUMzAxKTwvYT4oU0UxNjMyLU5FVCxzdGFydCAwNS8wOS8yMDIyKTwvdGQ+PC90cj48dHI+PHRkPjxhIGhyZWY9Ij9pZD1IRTE1MzY5MiZjYW1wdXM9MyZ0ZXJtPTM3JmNvdXJzZT0yNzI4NCI+QXBwbGljYXRpb24gZGV2ZWxvcG1lbnQgcHJvamVjdChTV1AzOTEpPC9hPihTRTE2MzAtTkVULHN0YXJ0IDA2LzA5LzIwMjIpPC90ZD48L3RyPjx0cj48dGQ+PGEgaHJlZj0iP2lkPUhFMTUzNjkyJmNhbXB1cz0zJnRlcm09MzcmY291cnNlPTI4MDcwIj5FdGhpY3MgaW4gSVQoSVRFMzAyYyk8L2E+KFNFMTYyOC1ORVQsc3RhcnQgMjQvMDkvMjAyMik8L3RkPjwvdHI+PC90YWJsZT5kAgsPFgIfAgXfOyA8dGQgdmFsaWduPSd0b3AnPjxoMz4uLi4gdGhlbiBzZWUgcmVwb3J0PGJyIC8+PGJyIC8+PC9oMz48dGFibGUgY2xhc3M9J3RhYmxlIHRhYmxlLWJvcmRlcmVkIHRhYmxlMSc+PHRyPjx0aGVhZD4gPHRoPk5vLjwvdGg+PHRoPkRhdGU8L3RoPjx0aD5TbG90PC90aD48dGg+Um9vbTwvdGg+PHRoPkxlY3R1cmVyPC90aD48dGg+R3JvdXAgTmFtZTwvdGg+PHRoPkF0dGVkYW5jZSBzdGF0dXM8L3RoPjx0aD5MZWN0dXJlcidzIGNvbW1lbnQ8L3RoPjwvdHI+PC90aGVhZD48dGJvZHk+PHRyPjx0ZD4xPC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPk1vbmRheSAwNS8wOS8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4yPC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPldlZG5lc2RheSAwNy8wOS8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4zPC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPkZyaWRheSAwOS8wOS8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD40PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPk1vbmRheSAxMi8wOS8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD41PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPldlZG5lc2RheSAxNC8wOS8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD42PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPkZyaWRheSAxNi8wOS8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD43PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPk1vbmRheSAxOS8wOS8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9cmVkPkFic2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD44PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPldlZG5lc2RheSAyMS8wOS8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD45PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPkZyaWRheSAyMy8wOS8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4xMDwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5Jz5Nb25kYXkgMjYvMDkvMjAyMjwvc3Bhbj48L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtZGFuZ2VyJz4zXygxMDo1MC0xMjoyMCk8L3NwYW4+PC90ZD48dGQ+REUtQzIwNDwvdGQ+PHRkPlNvbk5UNTwvdGQ+PHRkPlBSSjMwMS5NMzwvdGQ+PHRkPjxmb250IGNvbG9yPWdyZWVuPlByZXNlbnQ8L2ZvbnQ+PC90ZD48dGQ+PC90ZD48L3RyPjx0cj48dGQ+MTE8L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtcHJpbWFyeSc+V2VkbmVzZGF5IDI4LzA5LzIwMjI8L3NwYW4+PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLWRhbmdlcic+M18oMTA6NTAtMTI6MjApPC9zcGFuPjwvdGQ+PHRkPkRFLUMyMDQ8L3RkPjx0ZD5Tb25OVDU8L3RkPjx0ZD5QUkozMDEuTTM8L3RkPjx0ZD48Zm9udCBjb2xvcj1ncmVlbj5QcmVzZW50PC9mb250PjwvdGQ+PHRkPjwvdGQ+PC90cj48dHI+PHRkPjEyPC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPkZyaWRheSAzMC8wOS8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4xMzwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5Jz5Nb25kYXkgMDMvMTAvMjAyMjwvc3Bhbj48L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtZGFuZ2VyJz4zXygxMDo1MC0xMjoyMCk8L3NwYW4+PC90ZD48dGQ+REUtQzIwNDwvdGQ+PHRkPlNvbk5UNTwvdGQ+PHRkPlBSSjMwMS5NMzwvdGQ+PHRkPjxmb250IGNvbG9yPWdyZWVuPlByZXNlbnQ8L2ZvbnQ+PC90ZD48dGQ+PC90ZD48L3RyPjx0cj48dGQ+MTQ8L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtcHJpbWFyeSc+V2VkbmVzZGF5IDA1LzEwLzIwMjI8L3NwYW4+PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLWRhbmdlcic+M18oMTA6NTAtMTI6MjApPC9zcGFuPjwvdGQ+PHRkPkRFLUMyMDQ8L3RkPjx0ZD5Tb25OVDU8L3RkPjx0ZD5QUkozMDEuTTM8L3RkPjx0ZD48Zm9udCBjb2xvcj1ncmVlbj5QcmVzZW50PC9mb250PjwvdGQ+PHRkPjwvdGQ+PC90cj48dHI+PHRkPjE1PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPkZyaWRheSAwNy8xMC8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4xNjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5Jz5Nb25kYXkgMTAvMTAvMjAyMjwvc3Bhbj48L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtZGFuZ2VyJz4zXygxMDo1MC0xMjoyMCk8L3NwYW4+PC90ZD48dGQ+REUtQzIwNDwvdGQ+PHRkPlNvbk5UNTwvdGQ+PHRkPlBSSjMwMS5NMzwvdGQ+PHRkPjxmb250IGNvbG9yPWdyZWVuPlByZXNlbnQ8L2ZvbnQ+PC90ZD48dGQ+PC90ZD48L3RyPjx0cj48dGQ+MTc8L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtcHJpbWFyeSc+V2VkbmVzZGF5IDEyLzEwLzIwMjI8L3NwYW4+PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLWRhbmdlcic+M18oMTA6NTAtMTI6MjApPC9zcGFuPjwvdGQ+PHRkPkRFLUMyMDQ8L3RkPjx0ZD5Tb25OVDU8L3RkPjx0ZD5QUkozMDEuTTM8L3RkPjx0ZD48Zm9udCBjb2xvcj1ncmVlbj5QcmVzZW50PC9mb250PjwvdGQ+PHRkPjwvdGQ+PC90cj48dHI+PHRkPjE4PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPkZyaWRheSAxNC8xMC8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4xOTwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5Jz5TdW5kYXkgMTYvMTAvMjAyMjwvc3Bhbj48L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtZGFuZ2VyJz4xXyg3OjMwLTk6MDApPC9zcGFuPjwvdGQ+PHRkPkRFLUMyMDQ8L3RkPjx0ZD5Tb25OVDU8L3RkPjx0ZD5QUkozMDEuTTM8L3RkPjx0ZD48Zm9udCBjb2xvcj1ncmVlbj5QcmVzZW50PC9mb250PjwvdGQ+PHRkPjwvdGQ+PC90cj48dHI+PHRkPjIwPC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPlN1bmRheSAxNi8xMC8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjJfKDk6MTAtMTA6NDApPC9zcGFuPjwvdGQ+PHRkPkRFLUMyMDQ8L3RkPjx0ZD5Tb25OVDU8L3RkPjx0ZD5QUkozMDEuTTM8L3RkPjx0ZD48Zm9udCBjb2xvcj1ncmVlbj5QcmVzZW50PC9mb250PjwvdGQ+PHRkPjwvdGQ+PC90cj48dHI+PHRkPjIxPC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPlN1bmRheSAxNi8xMC8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9Z3JlZW4+UHJlc2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4yMjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5Jz5Nb25kYXkgMTcvMTAvMjAyMjwvc3Bhbj48L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtZGFuZ2VyJz4zXygxMDo1MC0xMjoyMCk8L3NwYW4+PC90ZD48dGQ+REUtQzIwNDwvdGQ+PHRkPlNvbk5UNTwvdGQ+PHRkPlBSSjMwMS5NMzwvdGQ+PHRkPjxmb250IGNvbG9yPWdyZWVuPlByZXNlbnQ8L2ZvbnQ+PC90ZD48dGQ+PC90ZD48L3RyPjx0cj48dGQ+MjM8L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtcHJpbWFyeSc+V2VkbmVzZGF5IDE5LzEwLzIwMjI8L3NwYW4+PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLWRhbmdlcic+M18oMTA6NTAtMTI6MjApPC9zcGFuPjwvdGQ+PHRkPkRFLUMyMDQ8L3RkPjx0ZD5Tb25OVDU8L3RkPjx0ZD5QUkozMDEuTTM8L3RkPjx0ZD48Zm9udCBjb2xvcj1ncmVlbj5QcmVzZW50PC9mb250PjwvdGQ+PHRkPjwvdGQ+PC90cj48dHI+PHRkPjI0PC90ZD48dGQ+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknPkZyaWRheSAyMS8xMC8yMDIyPC9zcGFuPjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1kYW5nZXInPjNfKDEwOjUwLTEyOjIwKTwvc3Bhbj48L3RkPjx0ZD5ERS1DMjA0PC90ZD48dGQ+U29uTlQ1PC90ZD48dGQ+UFJKMzAxLk0zPC90ZD48dGQ+PGZvbnQgY29sb3I9cmVkPkFic2VudDwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4yNTwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5Jz5Nb25kYXkgMzEvMTAvMjAyMjwvc3Bhbj48L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtZGFuZ2VyJz4zXygxMDo1MC0xMjoyMCk8L3NwYW4+PC90ZD48dGQ+REUtQzIwNDwvdGQ+PHRkPlNvbk5UNTwvdGQ+PHRkPlBSSjMwMS5NMzwvdGQ+PHRkPjxmb250IGNvbG9yPWJsYWNrPkZ1dHVyZTwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4yNjwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5Jz5XZWRuZXNkYXkgMDIvMTEvMjAyMjwvc3Bhbj48L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtZGFuZ2VyJz4zXygxMDo1MC0xMjoyMCk8L3NwYW4+PC90ZD48dGQ+REUtQzIwNDwvdGQ+PHRkPlNvbk5UNTwvdGQ+PHRkPlBSSjMwMS5NMzwvdGQ+PHRkPjxmb250IGNvbG9yPWJsYWNrPkZ1dHVyZTwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4yNzwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5Jz5GcmlkYXkgMDQvMTEvMjAyMjwvc3Bhbj48L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtZGFuZ2VyJz4zXygxMDo1MC0xMjoyMCk8L3NwYW4+PC90ZD48dGQ+REUtQzIwNDwvdGQ+PHRkPlNvbk5UNTwvdGQ+PHRkPlBSSjMwMS5NMzwvdGQ+PHRkPjxmb250IGNvbG9yPWJsYWNrPkZ1dHVyZTwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4yODwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5Jz5Nb25kYXkgMDcvMTEvMjAyMjwvc3Bhbj48L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtZGFuZ2VyJz4zXygxMDo1MC0xMjoyMCk8L3NwYW4+PC90ZD48dGQ+REUtQzIwNDwvdGQ+PHRkPlNvbk5UNTwvdGQ+PHRkPlBSSjMwMS5NMzwvdGQ+PHRkPjxmb250IGNvbG9yPWJsYWNrPkZ1dHVyZTwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PHRyPjx0ZD4yOTwvdGQ+PHRkPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5Jz5XZWRuZXNkYXkgMDkvMTEvMjAyMjwvc3Bhbj48L3RkPjx0ZD48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtZGFuZ2VyJz4zXygxMDo1MC0xMjoyMCk8L3NwYW4+PC90ZD48dGQ+REUtQzIwNDwvdGQ+PHRkPlNvbk5UNTwvdGQ+PHRkPlBSSjMwMS5NMzwvdGQ+PHRkPjxmb250IGNvbG9yPWJsYWNrPkZ1dHVyZTwvZm9udD48L3RkPjx0ZD48L3RkPjwvdHI+PC90Ym9keT48dGZvb3Q+PHRyPjx0ZCBjb2xzcGFuPSc3Jz48Yj5BYnNlbnQ8L2I+OiA3JSBhYnNlbnQgc28gZmFyICgyIGFic2VudCBvbiAyOSB0b3RhbCkuPC90ZD48L3RyPjwvdGZvb3Q+IDwvdGFibGU+PC90ZGQCBw8WAh8AZ2RkOBfDqrz8Pm/bSzMMwcXs62a2CQMpArsgoUB8EiVB5XI=" />
</div>
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
<span id="ctl00_lblNavigation"><b>&nbsp;</b></span></li>
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
<table summary='Select a course'>
<thead><tr><th scope='col'>Campus/program</th><th scope='col'>Term</th><th scope='col'>Course</th></tr></thead>
<tbody><tr><td valign='top'><div id="ctl00_mainContent_divCampus"><table><tr><td><b>FU-HL</b></td></tr></table></div></td>
<td valign='top'><div id="ctl00_mainContent_divTerm"><table><tr><td><a href="?id=HE153692&campus=3&term=18">Summer2017</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=19">Fall2017</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=20">Spring2018</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=21">Summer2018</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=22">Fall2018</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=23">Spring2019</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=24">Summer2019</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=25">Fall2019</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=26">Spring2020</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=27">Summer2020</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=28">Fall2020</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=29">Spring2021</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=30">Summer2021</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=31">Fall2021</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=32">Spring2022</a></td></tr><tr><td><a href="?id=HE153692&campus=3&term=33">Summer2022</a></td></tr><tr><td><b>Fall2022</b></td></tr></table></div></td>
<td valign='top'><div id="ctl00_mainContent_divCourse"><table><tr><td><b>Java Web Application Development(PRJ301)(PRJ301.M3,start 05/09/2022)</b></td></tr><tr><td><a href="?id=HE153692&campus=3&term=37&course=27397">Basic Cross-Platform Application Programming With .NET(PRN211)</a>(SE1630-NET,start 05/09/2022)</td></tr><tr><td><a href="?id=HE153692&campus=3&term=37&course=27229">Software Requirement(SWR302)</a>(SE1625-KS,start 05/09/2022)</td></tr><tr><td><a href="?id=HE153692&campus=3&term=37&course=27254">Software Testing(SWT301)</a>(SE1632-NET,start 05/09/2022)</td></tr><tr><td><a href="?id=HE153692&campus=3&term=37&course=27284">Application development project(SWP391)</a>(SE1630-NET,start 06/09/2022)</td></tr><tr><td><a href="?id=HE153692&campus=3&term=37&course=28070">Ethics in IT(ITE302c)</a>(SE1628-NET,start 24/09/2022)</td></tr></table></div></td>
</tbody>
</table>
</td>
<div id="ctl00_mainContent_divDetail"> <td valign='top'><h3>... then see report<br /><br /></h3><table class='table table-bordered table1'><tr><thead> <th>No.</th><th>Date</th><th>Slot</th><th>Room</th><th>Lecturer</th><th>Group Name</th><th>Attedance status</th><th>Lecturer's comment</th></tr></thead><tbody><tr><td>1</td><td><span class='label label-primary'>Monday 05/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>2</td><td><span class='label label-primary'>Wednesday 07/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>3</td><td><span class='label label-primary'>Friday 09/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>4</td><td><span class='label label-primary'>Monday 12/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>5</td><td><span class='label label-primary'>Wednesday 14/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>6</td><td><span class='label label-primary'>Friday 16/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>7</td><td><span class='label label-primary'>Monday 19/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=red>Absent</font></td><td></td></tr><tr><td>8</td><td><span class='label label-primary'>Wednesday 21/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>9</td><td><span class='label label-primary'>Friday 23/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>10</td><td><span class='label label-primary'>Monday 26/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>11</td><td><span class='label label-primary'>Wednesday 28/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>12</td><td><span class='label label-primary'>Friday 30/09/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>13</td><td><span class='label label-primary'>Monday 03/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>14</td><td><span class='label label-primary'>Wednesday 05/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>15</td><td><span class='label label-primary'>Friday 07/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>16</td><td><span class='label label-primary'>Monday 10/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>17</td><td><span class='label label-primary'>Wednesday 12/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>18</td><td><span class='label label-primary'>Friday 14/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>19</td><td><span class='label label-primary'>Sunday 16/10/2022</span></td><td><span class='label label-danger'>1_(7:30-9:00)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>20</td><td><span class='label label-primary'>Sunday 16/10/2022</span></td><td><span class='label label-danger'>2_(9:10-10:40)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>21</td><td><span class='label label-primary'>Sunday 16/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>22</td><td><span class='label label-primary'>Monday 17/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>23</td><td><span class='label label-primary'>Wednesday 19/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=green>Present</font></td><td></td></tr><tr><td>24</td><td><span class='label label-primary'>Friday 21/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=red>Absent</font></td><td></td></tr><tr><td>25</td><td><span class='label label-primary'>Monday 31/10/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=black>Future</font></td><td></td></tr><tr><td>26</td><td><span class='label label-primary'>Wednesday 02/11/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=black>Future</font></td><td></td></tr><tr><td>27</td><td><span class='label label-primary'>Friday 04/11/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=black>Future</font></td><td></td></tr><tr><td>28</td><td><span class='label label-primary'>Monday 07/11/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=black>Future</font></td><td></td></tr><tr><td>29</td><td><span class='label label-primary'>Wednesday 09/11/2022</span></td><td><span class='label label-danger'>3_(10:50-12:20)</span></td><td>DE-C204</td><td>SonNT5</td><td>PRJ301.M3</td><td><font color=black>Future</font></td><td></td></tr></tbody><tfoot><tr><td colspan='7'><b>Absent</b>: 7% absent so far (2 absent on 29 total).</td></tr></tfoot> </table></td</div>
</tr>
</tbody></table>
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
<b>Mọi góp ý, thắc mắc xin liên hệ: </b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Phòng dịch vụ sinh viên</span>: Email: <a href="/cdn-cgi/l/email-protection#abcfc2c8c3ddded8c2c5c3ddc2cec5ebcdce85cecfde85ddc5"><span class="__cf_email__" data-cfemail="e084898388969593898e889689858ea08685ce858495ce968e">[email&#160;protected]</span></a>.
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
</form>
</div>
</div>
</div>
<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script type="209c5310b61e9289cc7cdafe-text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-10421012-13']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
<script type="209c5310b61e9289cc7cdafe-text/javascript">
        var isClose = false;

        //this code will handle the F5 or Ctrl+F5 key
        //need to handle more cases like ctrl+R whose codes are not listed here
        document.onkeydown = checkKeycode;
        function checkKeycode(e) {
            var keycode;
            if (window.event)
                keycode = window.event.keyCode;
            else if (e)
                keycode = e.which;
            if (keycode == 116) {
                isClose = true;
            }
        }
        function somefunction() {
            isClose = true;
        }

        //<![CDATA[

        function bodyUnload() {

            if (!isClose) {
                var request = GetRequest();
                request.open("GET", "LogOut.aspx", true);
                request.send();
            }
        }
        function GetRequest() {
            var request = null;
            if (window.XMLHttpRequest) {
                //incase of IE7,FF, Opera and Safari browser
                request = new XMLHttpRequest();
            }
            else {
                //for old browser like IE 6.x and IE 5.x
                request = new ActiveXObject('MSXML2.XMLHTTP.3.0');
            }
            return request;
        }
        //]]>
    </script>
<script src="/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="209c5310b61e9289cc7cdafe-|49" defer=""></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon='{"rayId":"761113410e6a6e55","token":"56c6dd7e4ecf4947aa540f48289e45af","version":"2022.10.3","si":100}' crossorigin="anonymous"></script>
</body>
</html>
