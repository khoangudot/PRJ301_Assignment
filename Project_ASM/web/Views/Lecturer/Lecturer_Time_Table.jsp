<%-- 
    Document   : TimeTable
    Created on : Oct 28, 2022, 10:08:14 AM
    Author     : MrKhoaz
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" /><title>
	View Schedule
</title><link rel="Stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" type="text/css" />
<link rel="Stylesheet" href="../Style/fu.css" type="text/css" />
<link rel="Stylesheet" href="../Style/JavaScript/jquery.css" type="text/css" />
<link rel="Stylesheet" href="../Style/JavaScript/jquery-ui.css" type="text/css" />
<link rel="Stylesheet" href="../Style/JavaScript/jquery.alerts.css" type="text/css" />
<script src="../Style/JavaScript/jquery.min.js" type="7edd18d5b20355bf4edc8943-text/javascript"></script>
<script src="../Style/JavaScript/jquery_002.js" type="7edd18d5b20355bf4edc8943-text/javascript"></script>
<script src="../Style/JavaScript/jquery_003.js" type="7edd18d5b20355bf4edc8943-text/javascript"></script>
<script src="../Style/JavaScript/jquery.js" type="7edd18d5b20355bf4edc8943-text/javascript"></script>
<script src="../Style/JavaScript/jquery-1.8.3.js" type="7edd18d5b20355bf4edc8943-text/javascript"></script>
<script src="../Style/JavaScript/jquery-ui.js" type="7edd18d5b20355bf4edc8943-text/javascript"></script>
<script src="../Style/JavaScript/jquery.alerts.js" type="7edd18d5b20355bf4edc8943-text/javascript"></script>
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
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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aWduPSdjZW50ZXInPjI5LzEwPC90aD48dGggIGFsaWduPSdjZW50ZXInPjMwLzEwPC90aD5kAg0PFgIfBQWQQDx0cj48dGQ+U2xvdCAwIDwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjwvdHI+PHRyPjx0ZD5TbG90IDEgPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PC90cj48dHI+PHRkPlNsb3QgMiA8L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48L3RyPjx0cj48dGQ+U2xvdCAzIDwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjwvdHI+PHRyPjx0ZD5TbG90IDQgPC90ZD48dGQ+PHA+PGEgaHJlZj0nLi4vU2NoZWR1bGUvQWN0aXZpdHlEZXRhaWwuYXNweD9pZD0xMDIwMjQxJz5TV1IzMDItPGEgY2xhc3M9J2xhYmVsIGxhYmVsLXdhcm5pbmcnIGhyZWY9J2h0dHA6Ly9mbG0uZnB0LmVkdS52bi9ndWkvcm9sZS9ndWVzdC9MaXN0U2NoZWR1bGVTeWxsYWJ1cz9zdWJqZWN0Q29kZT04c1pkTHBGRjdWcGszRDAzVmN6eTRBJTNkJTNkJlNlc3Npb25Obz1oWHZ5YXlXeUg2OUhJd2dYTXFzY21BJTNkJTNkJyB0YXJnZXQ9J19ibGFuayc+VmlldyBNYXRlcmlhbHM8L2E+PGJyLz4gYXQgREUtQzIwNSA8YSA+IDxhIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5JyBocmVmPSdodHRwczovL2Z1LmVkdW5leHQudm4/Q2FtcHVzQ29kZT1BUEhMJnN1YmplY3RDb2RlPVNXUjMwMiZzZW1lc3Rlcj1GYWxsMjAyMiZDbGFzc05hbWU9U0UxNjI1LUtTJlNlc3Npb25OMD0yMic+LUVkdU5leHQgPC9hPjxici8+KDxmb250IGNvbG9yPUdyZWVuPmF0dGVuZGVkPC9mb250Pik8YnIvPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1zdWNjZXNzJz4oMTI6NTAtMTQ6MjApPC9zcGFuPjxici8+PC9wPjwvdGQ+PHRkPi08L3RkPjx0ZD48cD48YSBocmVmPScuLi9TY2hlZHVsZS9BY3Rpdml0eURldGFpbC5hc3B4P2lkPTEwMjAyNTEnPlNXUjMwMi08YSBjbGFzcz0nbGFiZWwgbGFiZWwtd2FybmluZycgaHJlZj0naHR0cDovL2ZsbS5mcHQuZWR1LnZuL2d1aS9yb2xlL2d1ZXN0L0xpc3RTY2hlZHVsZVN5bGxhYnVzP3N1YmplY3RDb2RlPThzWmRMcEZGN1ZwazNEMDNWY3p5NEElM2QlM2QmU2Vzc2lvbk5vPTkzc2ozJTJmSFR2N1Y1YVJxc29icVZtQSUzZCUzZCcgdGFyZ2V0PSdfYmxhbmsnPlZpZXcgTWF0ZXJpYWxzPC9hPjxici8+IGF0IERFLUMyMDUgPGEgPiA8YSBjbGFzcz0nbGFiZWwgbGFiZWwtcHJpbWFyeScgaHJlZj0naHR0cHM6Ly9mdS5lZHVuZXh0LnZuP0NhbXB1c0NvZGU9QVBITCZzdWJqZWN0Q29kZT1TV1IzMDImc2VtZXN0ZXI9RmFsbDIwMjImQ2xhc3NOYW1lPVNFMTYyNS1LUyZTZXNzaW9uTjA9MjMnPi1FZHVOZXh0IDwvYT48YnIvPig8Zm9udCBjb2xvcj1SZWQ+YWJzZW50PC9mb250Pik8YnIvPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1zdWNjZXNzJz4oMTI6NTAtMTQ6MjApPC9zcGFuPjxici8+PC9wPjwvdGQ+PHRkPi08L3RkPjx0ZD48cD48YSBocmVmPScuLi9TY2hlZHVsZS9BY3Rpdml0eURldGFpbC5hc3B4P2lkPTEwMjAyNjEnPlNXUjMwMi08YSBjbGFzcz0nbGFiZWwgbGFiZWwtd2FybmluZycgaHJlZj0naHR0cDovL2ZsbS5mcHQuZWR1LnZuL2d1aS9yb2xlL2d1ZXN0L0xpc3RTY2hlZHVsZVN5bGxhYnVzP3N1YmplY3RDb2RlPThzWmRMcEZGN1ZwazNEMDNWY3p5NEElM2QlM2QmU2Vzc2lvbk5vPU5Sekp1JTJiRVZSSVdNTGJoQWlDaUJ5QSUzZCUzZCcgdGFyZ2V0PSdfYmxhbmsnPlZpZXcgTWF0ZXJpYWxzPC9hPjxici8+IGF0IERFLUMyMDUgPGEgPiA8YSBjbGFzcz0nbGFiZWwgbGFiZWwtcHJpbWFyeScgaHJlZj0naHR0cHM6Ly9mdS5lZHVuZXh0LnZuP0NhbXB1c0NvZGU9QVBITCZzdWJqZWN0Q29kZT1TV1IzMDImc2VtZXN0ZXI9RmFsbDIwMjImQ2xhc3NOYW1lPVNFMTYyNS1LUyZTZXNzaW9uTjA9MjQnPi1FZHVOZXh0IDwvYT48YnIvPig8Zm9udCBjb2xvcj1HcmVlbj5hdHRlbmRlZDwvZm9udD4pPGJyLz48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtc3VjY2Vzcyc+KDEyOjUwLTE0OjIwKTwvc3Bhbj48YnIvPjwvcD48L3RkPjx0ZD48cD48YSBocmVmPScuLi9TY2hlZHVsZS9BY3Rpdml0eURldGFpbC5hc3B4P2lkPTEwNDIyMTknPklURTMwMmMtPGEgY2xhc3M9J2xhYmVsIGxhYmVsLXdhcm5pbmcnIGhyZWY9J2h0dHA6Ly9mbG0uZnB0LmVkdS52bi9ndWkvcm9sZS9ndWVzdC9MaXN0U2NoZWR1bGVTeWxsYWJ1cz9zdWJqZWN0Q29kZT00S1ROSFRXU3l5TSUyYmN4MWMzQkJMdEElM2QlM2QmU2Vzc2lvbk5vPVZkRjl6cnElMmJnOHFGSnJLMm10V29ndyUzZCUzZCcgdGFyZ2V0PSdfYmxhbmsnPlZpZXcgTWF0ZXJpYWxzPC9hPjxici8+IGF0IEJFLTIxOCAtIDxhIGNsYXNzPSdsYWJlbCBsYWJlbC1kZWZhdWx0JyBocmVmPSdodHRwczovL21lZXQuZ29vZ2xlLmNvbS9iY2YtYWp3ai1tbWEnIHRhcmdldD0nX2JsYW5rJz5NZWV0IFVSTDwvYT48YSA+IDxici8+KDxmb250IGNvbG9yPXJlZD5Ob3QgeWV0PC9mb250Pik8YnIvPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1zdWNjZXNzJz4oMTI6NTAtMTQ6MjApPC9zcGFuPjxici8+PGRpdiBjbGFzcz0nb25saW5lLWluZGljYXRvcic+PHNwYW4gY2xhc3M9J2JsaW5rJz48L3NwYW4+PC9kaXY+PGgzIGNsYXNzPSdvbmxpbmUtdGV4dCc+T25saW5lPC9oMz48L3A+PC90ZD48dGQ+LTwvdGQ+PC90cj48dHI+PHRkPlNsb3QgNSA8L3RkPjx0ZD48cD48YSBocmVmPScuLi9TY2hlZHVsZS9BY3Rpdml0eURldGFpbC5hc3B4P2lkPTEwMjUyODEnPlBSTjIxMS08YSBjbGFzcz0nbGFiZWwgbGFiZWwtd2FybmluZycgaHJlZj0naHR0cDovL2ZsbS5mcHQuZWR1LnZuL2d1aS9yb2xlL2d1ZXN0L0xpc3RTY2hlZHVsZVN5bGxhYnVzP3N1YmplY3RDb2RlPW40SW5CV3N1YnNBM1p0cDlOM090MEElM2QlM2QmU2Vzc2lvbk5vPXpvNlc1b2dEZXNNc2QwUWR6YUZuVUElM2QlM2QnIHRhcmdldD0nX2JsYW5rJz5WaWV3IE1hdGVyaWFsczwvYT48YnIvPiBhdCBERS1DMzAzIDxhID4gPGEgY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknIGhyZWY9J2h0dHBzOi8vZnUuZWR1bmV4dC52bj9DYW1wdXNDb2RlPUFQSEwmc3ViamVjdENvZGU9UFJOMjExJnNlbWVzdGVyPUZhbGwyMDIyJkNsYXNzTmFtZT1TRTE2MzAtTkVUJlNlc3Npb25OMD0yMSc+LUVkdU5leHQgPC9hPjxici8+KDxmb250IGNvbG9yPUdyZWVuPmF0dGVuZGVkPC9mb250Pik8YnIvPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1zdWNjZXNzJz4oMTQ6MzAtMTY6MDApPC9zcGFuPjxici8+PC9wPjwvdGQ+PHRkPi08L3RkPjx0ZD48cD48YSBocmVmPScuLi9TY2hlZHVsZS9BY3Rpdml0eURldGFpbC5hc3B4P2lkPTEwMjUyODInPlBSTjIxMS08YSBjbGFzcz0nbGFiZWwgbGFiZWwtd2FybmluZycgaHJlZj0naHR0cDovL2ZsbS5mcHQuZWR1LnZuL2d1aS9yb2xlL2d1ZXN0L0xpc3RTY2hlZHVsZVN5bGxhYnVzP3N1YmplY3RDb2RlPW40SW5CV3N1YnNBM1p0cDlOM090MEElM2QlM2QmU2Vzc2lvbk5vPWhYdnlheVd5SDY5SEl3Z1hNcXNjbUElM2QlM2QnIHRhcmdldD0nX2JsYW5rJz5WaWV3IE1hdGVyaWFsczwvYT48YnIvPiBhdCBERS1DMzAzIDxhID4gPGEgY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknIGhyZWY9J2h0dHBzOi8vZnUuZWR1bmV4dC52bj9DYW1wdXNDb2RlPUFQSEwmc3ViamVjdENvZGU9UFJOMjExJnNlbWVzdGVyPUZhbGwyMDIyJkNsYXNzTmFtZT1TRTE2MzAtTkVUJlNlc3Npb25OMD0yMic+LUVkdU5leHQgPC9hPjxici8+KDxmb250IGNvbG9yPUdyZWVuPmF0dGVuZGVkPC9mb250Pik8YnIvPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1zdWNjZXNzJz4oMTQ6MzAtMTY6MDApPC9zcGFuPjxici8+PC9wPjwvdGQ+PHRkPjxwPjxhIGhyZWY9Jy4uL1NjaGVkdWxlL0FjdGl2aXR5RGV0YWlsLmFzcHg/aWQ9MTAyMTkwMSc+U1dQMzkxLTxhIGNsYXNzPSdsYWJlbCBsYWJlbC13YXJuaW5nJyBocmVmPSdodHRwOi8vZmxtLmZwdC5lZHUudm4vZ3VpL3JvbGUvZ3Vlc3QvTGlzdFNjaGVkdWxlU3lsbGFidXM/c3ViamVjdENvZGU9SHgya29RcmdseE5SJTJmUUdMYlJpTjF3JTNkJTNkJlNlc3Npb25Obz05M3NqMyUyZkhUdjdWNWFScXNvYnFWbUElM2QlM2QnIHRhcmdldD0nX2JsYW5rJz5WaWV3IE1hdGVyaWFsczwvYT48YnIvPiBhdCBERS1DMzA3IDxhID4gPGEgY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknIGhyZWY9J2h0dHBzOi8vZnUuZWR1bmV4dC52bj9DYW1wdXNDb2RlPUFQSEwmc3ViamVjdENvZGU9U1dQMzkxJnNlbWVzdGVyPUZhbGwyMDIyJkNsYXNzTmFtZT1TRTE2MzAtTkVUJlNlc3Npb25OMD0yMyc+LUVkdU5leHQgPC9hPjxici8+KDxmb250IGNvbG9yPVJlZD5hYnNlbnQ8L2ZvbnQ+KTxici8+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXN1Y2Nlc3MnPigxNDozMC0xNjowMCk8L3NwYW4+PGJyLz48L3A+PC90ZD48dGQ+PHA+PGEgaHJlZj0nLi4vU2NoZWR1bGUvQWN0aXZpdHlEZXRhaWwuYXNweD9pZD0xMDI1MjgzJz5QUk4yMTEtPGEgY2xhc3M9J2xhYmVsIGxhYmVsLXdhcm5pbmcnIGhyZWY9J2h0dHA6Ly9mbG0uZnB0LmVkdS52bi9ndWkvcm9sZS9ndWVzdC9MaXN0U2NoZWR1bGVTeWxsYWJ1cz9zdWJqZWN0Q29kZT1uNEluQldzdWJzQTNadHA5TjNPdDBBJTNkJTNkJlNlc3Npb25Obz05M3NqMyUyZkhUdjdWNWFScXNvYnFWbUElM2QlM2QnIHRhcmdldD0nX2JsYW5rJz5WaWV3IE1hdGVyaWFsczwvYT48YnIvPiBhdCBERS1DMzAzIDxhID4gPGEgY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknIGhyZWY9J2h0dHBzOi8vZnUuZWR1bmV4dC52bj9DYW1wdXNDb2RlPUFQSEwmc3ViamVjdENvZGU9UFJOMjExJnNlbWVzdGVyPUZhbGwyMDIyJkNsYXNzTmFtZT1TRTE2MzAtTkVUJlNlc3Npb25OMD0yMyc+LUVkdU5leHQgPC9hPjxici8+KDxmb250IGNvbG9yPUdyZWVuPmF0dGVuZGVkPC9mb250Pik8YnIvPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1zdWNjZXNzJz4oMTQ6MzAtMTY6MDApPC9zcGFuPjxici8+PC9wPjwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48L3RyPjx0cj48dGQ+U2xvdCA2IDwvdGQ+PHRkPjxwPjxhIGhyZWY9Jy4uL1NjaGVkdWxlL0FjdGl2aXR5RGV0YWlsLmFzcHg/aWQ9MTAyMDk5MSc+U1dUMzAxLTxhIGNsYXNzPSdsYWJlbCBsYWJlbC13YXJuaW5nJyBocmVmPSdodHRwOi8vZmxtLmZwdC5lZHUudm4vZ3VpL3JvbGUvZ3Vlc3QvTGlzdFNjaGVkdWxlU3lsbGFidXM/c3ViamVjdENvZGU9OHZvWVhnSlp0JTJmMG1pbkNaT2FOSkF3JTNkJTNkJlNlc3Npb25Obz1oWHZ5YXlXeUg2OUhJd2dYTXFzY21BJTNkJTNkJyB0YXJnZXQ9J19ibGFuayc+VmlldyBNYXRlcmlhbHM8L2E+PGJyLz4gYXQgREUtQzMwMSA8YSA+IDxhIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5JyBocmVmPSdodHRwczovL2Z1LmVkdW5leHQudm4/Q2FtcHVzQ29kZT1BUEhMJnN1YmplY3RDb2RlPVNXVDMwMSZzZW1lc3Rlcj1GYWxsMjAyMiZDbGFzc05hbWU9U0UxNjMyLU5FVCZTZXNzaW9uTjA9MjInPi1FZHVOZXh0IDwvYT48YnIvPig8Zm9udCBjb2xvcj1HcmVlbj5hdHRlbmRlZDwvZm9udD4pPGJyLz48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtc3VjY2Vzcyc+KDE2OjEwLTE3OjQwKTwvc3Bhbj48YnIvPjwvcD48L3RkPjx0ZD48cD48YSBocmVmPScuLi9TY2hlZHVsZS9BY3Rpdml0eURldGFpbC5hc3B4P2lkPTEwMjE4OTEnPlNXUDM5MS08YSBjbGFzcz0nbGFiZWwgbGFiZWwtd2FybmluZycgaHJlZj0naHR0cDovL2ZsbS5mcHQuZWR1LnZuL2d1aS9yb2xlL2d1ZXN0L0xpc3RTY2hlZHVsZVN5bGxhYnVzP3N1YmplY3RDb2RlPUh4MmtvUXJnbHhOUiUyZlFHTGJSaU4xdyUzZCUzZCZTZXNzaW9uTm89aFh2eWF5V3lINjlISXdnWE1xc2NtQSUzZCUzZCcgdGFyZ2V0PSdfYmxhbmsnPlZpZXcgTWF0ZXJpYWxzPC9hPjxici8+IGF0IERFLUMzMDcgPGEgPiA8YSBjbGFzcz0nbGFiZWwgbGFiZWwtcHJpbWFyeScgaHJlZj0naHR0cHM6Ly9mdS5lZHVuZXh0LnZuP0NhbXB1c0NvZGU9QVBITCZzdWJqZWN0Q29kZT1TV1AzOTEmc2VtZXN0ZXI9RmFsbDIwMjImQ2xhc3NOYW1lPVNFMTYzMC1ORVQmU2Vzc2lvbk4wPTIyJz4tRWR1TmV4dCA8L2E+PGJyLz4oPGZvbnQgY29sb3I9UmVkPmFic2VudDwvZm9udD4pPGJyLz48c3BhbiBjbGFzcz0nbGFiZWwgbGFiZWwtc3VjY2Vzcyc+KDE2OjEwLTE3OjQwKTwvc3Bhbj48YnIvPjwvcD48L3RkPjx0ZD48cD48YSBocmVmPScuLi9TY2hlZHVsZS9BY3Rpdml0eURldGFpbC5hc3B4P2lkPTEwMjEwMDEnPlNXVDMwMS08YSBjbGFzcz0nbGFiZWwgbGFiZWwtd2FybmluZycgaHJlZj0naHR0cDovL2ZsbS5mcHQuZWR1LnZuL2d1aS9yb2xlL2d1ZXN0L0xpc3RTY2hlZHVsZVN5bGxhYnVzP3N1YmplY3RDb2RlPTh2b1lYZ0padCUyZjBtaW5DWk9hTkpBdyUzZCUzZCZTZXNzaW9uTm89OTNzajMlMmZIVHY3VjVhUnFzb2JxVm1BJTNkJTNkJyB0YXJnZXQ9J19ibGFuayc+VmlldyBNYXRlcmlhbHM8L2E+PGJyLz4gYXQgREUtQzMwMSA8YSA+IDxhIGNsYXNzPSdsYWJlbCBsYWJlbC1wcmltYXJ5JyBocmVmPSdodHRwczovL2Z1LmVkdW5leHQudm4/Q2FtcHVzQ29kZT1BUEhMJnN1YmplY3RDb2RlPVNXVDMwMSZzZW1lc3Rlcj1GYWxsMjAyMiZDbGFzc05hbWU9U0UxNjMyLU5FVCZTZXNzaW9uTjA9MjMnPi1FZHVOZXh0IDwvYT48YnIvPig8Zm9udCBjb2xvcj1SZWQ+YWJzZW50PC9mb250Pik8YnIvPjxzcGFuIGNsYXNzPSdsYWJlbCBsYWJlbC1zdWNjZXNzJz4oMTY6MTAtMTc6NDApPC9zcGFuPjxici8+PC9wPjwvdGQ+PHRkPjxwPjxhIGhyZWY9Jy4uL1NjaGVkdWxlL0FjdGl2aXR5RGV0YWlsLmFzcHg/aWQ9MTAyMTkxMSc+U1dQMzkxLTxhIGNsYXNzPSdsYWJlbCBsYWJlbC13YXJuaW5nJyBocmVmPSdodHRwOi8vZmxtLmZwdC5lZHUudm4vZ3VpL3JvbGUvZ3Vlc3QvTGlzdFNjaGVkdWxlU3lsbGFidXM/c3ViamVjdENvZGU9SHgya29RcmdseE5SJTJmUUdMYlJpTjF3JTNkJTNkJlNlc3Npb25Obz1OUnpKdSUyYkVWUklXTUxiaEFpQ2lCeUElM2QlM2QnIHRhcmdldD0nX2JsYW5rJz5WaWV3IE1hdGVyaWFsczwvYT48YnIvPiBhdCBERS1DMzA3IDxhID4gPGEgY2xhc3M9J2xhYmVsIGxhYmVsLXByaW1hcnknIGhyZWY9J2h0dHBzOi8vZnUuZWR1bmV4dC52bj9DYW1wdXNDb2RlPUFQSEwmc3ViamVjdENvZGU9U1dQMzkxJnNlbWVzdGVyPUZhbGwyMDIyJkNsYXNzTmFtZT1TRTE2MzAtTkVUJlNlc3Npb25OMD0yNCc+LUVkdU5leHQgPC9hPjxici8+KDxmb250IGNvbG9yPVJlZD5hYnNlbnQ8L2ZvbnQ+KTxici8+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXN1Y2Nlc3MnPigxNjoxMC0xNzo0MCk8L3NwYW4+PGJyLz48L3A+PC90ZD48dGQ+PHA+PGEgaHJlZj0nLi4vU2NoZWR1bGUvQWN0aXZpdHlEZXRhaWwuYXNweD9pZD0xMDIxMDExJz5TV1QzMDEtPGEgY2xhc3M9J2xhYmVsIGxhYmVsLXdhcm5pbmcnIGhyZWY9J2h0dHA6Ly9mbG0uZnB0LmVkdS52bi9ndWkvcm9sZS9ndWVzdC9MaXN0U2NoZWR1bGVTeWxsYWJ1cz9zdWJqZWN0Q29kZT04dm9ZWGdKWnQlMmYwbWluQ1pPYU5KQXclM2QlM2QmU2Vzc2lvbk5vPU5Sekp1JTJiRVZSSVdNTGJoQWlDaUJ5QSUzZCUzZCcgdGFyZ2V0PSdfYmxhbmsnPlZpZXcgTWF0ZXJpYWxzPC9hPjxici8+IGF0IERFLUMzMDEgPGEgPiA8YSBjbGFzcz0nbGFiZWwgbGFiZWwtcHJpbWFyeScgaHJlZj0naHR0cHM6Ly9mdS5lZHVuZXh0LnZuP0NhbXB1c0NvZGU9QVBITCZzdWJqZWN0Q29kZT1TV1QzMDEmc2VtZXN0ZXI9RmFsbDIwMjImQ2xhc3NOYW1lPVNFMTYzMi1ORVQmU2Vzc2lvbk4wPTI0Jz4tRWR1TmV4dCA8L2E+PGJyLz4oPGZvbnQgY29sb3I9R3JlZW4+YXR0ZW5kZWQ8L2ZvbnQ+KTxici8+PHNwYW4gY2xhc3M9J2xhYmVsIGxhYmVsLXN1Y2Nlc3MnPigxNjoxMC0xNzo0MCk8L3NwYW4+PGJyLz48L3A+PC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjwvdHI+PHRyPjx0ZD5TbG90IDcgPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PC90cj48dHI+PHRkPlNsb3QgOCA8L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48dGQ+LTwvdGQ+PHRkPi08L3RkPjx0ZD4tPC90ZD48L3RyPmQCDw8WAh8FBeQCPHVsPjxsaT4oPGZvbnQgY29sb3I9J2dyZWVuJz5hdHRlbmRlZDwvZm9udD4pOiBLaG9hTlZIRTE1MzY5MiBoYWQgYXR0ZW5kZWQgdGhpcyBhY3Rpdml0eSAvIE5ndXnhu4VuIFZp4buHdCBLaG9hIMSRw6MgdGhhbSBnaWEgaG/huqF0IMSR4buZbmcgbsOgeTwvbGk+PGxpPig8Zm9udCBjb2xvcj0ncmVkJz5hYnNlbnQ8L2ZvbnQ+KTogS2hvYU5WSEUxNTM2OTIgaGFkIE5PVCBhdHRlbmRlZCB0aGlzIGFjdGl2aXR5IC8gTmd1eeG7hW4gVmnhu4d0IEtob2EgxJHDoyB24bqvbmcgbeG6t3QgYnXhu5VpIG7DoHk8L2xpPiAgIDxsaT4oLSk6IG5vIGRhdGEgd2FzIGdpdmVuIC8gY2jGsGEgY8OzIGThu68gbGnhu4d1PC9saT4gPC91bD5kAgcPFgIfAGdkZIBB3LpltB4CBi8s6vhsaebuv33akS58dzZzZ6zZJtKL" />
</div>
<script type="7edd18d5b20355bf4edc8943-text/javascript">

</script>
<div>
<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D5FDD5A8" />
<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdADzZ9hsRntbjvIx3op/RBQaU1XYALReTroFJdjTvD/QOPK1gsq074Y2ujrILA8To2JbD267NDPR9RMnY08SdFfla9gKY8YnupVlFlqmszjA0KsuIdIn4QHhoQNvrWLqhu1pYSIyv68kt2nzn6eRc6IZMABIfE9keuuy5VzdSJoDlCDDarFJkh0XsarzAy8B0HqOimTcb2/iolFYKe+qDIgEgQAZnPTJ14zMFs5WO+1Jx425g742rvsJy6NWyvJ1f1k9DuqAbcSSduGGTZXEnCjl7t1bxwRMDBjM/ltH2/1qLPf1lziVZTVsGh8/QsOwQLirUAv7izDPjGHWv0cxtdFyyzeffAxCYSMnGzb8nSa+F4M6EJT/XgIQcEVR+4VdWDcLUinbPJeq8FT02AiMqRVAfVMQZ9G2edaZisToeqPDRa4NA4/MMS11kVoCIRsPPD50d9giOK4H79knwi2YQ7GaFXhn/6m64A2WKlNXZaR1dFgUtOkiMGqKxiUDESWPHJ+r78Oy43G3VefQJiryUUCXt6nq8zgY3SCNyNJvH5UXPFLExSsRuaDifXn3xREG0xxHEify/2pZqMOcC4hK7iHOGKHgkBvgOpx6GjywCEGi1BgO2fh6aVlgspRNs2BYbqNvgfXO4f5YOXhW+JkxiZiV/ji/d9j1uq90BZRQ2hvL8r0cYGDxpS7aFTmaD29B3uAsNVzFx9T0MaYiA1XarslwwKcJ9fzDj2YvDcaBWEZMVyCxERUSg84f4yLXR5F+aV+n3wyHMvalECWwVzOsG44QnO4gTty9iF/lxaJIIwEc5sRSBjQP0AE1v0SPqXQMmamChxyc2ijzS5KPt1XBvTrS1eVQFBggGV/apGjFZGDIFqBzNoKv/ZKQLF3Q5n6gKtFG+j39/RauqtaG2iEWj0hXRnNmFBrit25bwUc1AnfcGxKARoJ+YWfki4PcG/VF1o+b9dcnpDhAochHtqdWlrTrtROX4Vjz4ZrD5AYT4Jw6hHb+2sFpx4umg+7d1Sh6DX1VxlIyV5RAzJGZ+CtloaSDAJsucT3JFOJuXIFcmAuYsZvlPyqsUzMx0Vl12PH8bOVtoGeLne2montjUcNIqxpYDgE5w4Pz9jpMXo2c3dbm8x+ChFxzg4JJofBf4KFGPUu/lVrhbJalAEWPy3yZzR9xhBs6E2lrzxeN9XoMfEfdDi/QvgDWa+U7GB8EP1e+0f1Gu7ptBEFkuMzJnGucyBjYUEQKoT8Thxu2WYeF6Trc3GusC7iRLH5o3/9+k6QP/sZDesqSmPA0bnKRAxX67DViis+NA4wCokzS1EZAznEJG4g==" />
</div>
<div id="ctl00_divUser" style="float: right; margin-right: 16px;">
<a href="?view=user">
<span id="ctl00_lblLogIn" class="label label-success">khoanvhe153692</span></a> | <a href="?logout=true" class="label label-success">logout</a> |
<span id="ctl00_lblCampusName" class="label label-success"> CAMPUS: FPTU-Hòa Lạc</span>
</div>
<ol class="breadcrumb">
<li>
<span id="ctl00_lblNavigation"><a href='../Student.aspx'>Home</a>&nbsp;|&nbsp;<b>View Schedule</b></span></li>
</ol>
<table>
<tr style="border-bottom: 0 none">
<td>
<div>
<style>
        div.online-indicator {
            display: inline-block;
            width: 15px;
            height: 15px;
            margin-right: 5px;
  
            background-color: #0fcc45;
            border-radius: 50%;
  
            position: relative;
        }
        span.blink {
            display: block;
            width: 15px;
            height: 15px;
  
            background-color: #0fcc45;
            opacity: 0.7;
            border-radius: 50%;
  
            animation: blink 1s linear infinite;
        }

        h3.online-text {
            display: inline;
  
            font-family: 'Rubik', sans-serif;
            font-weight: 400;
            text-shadow: 0px 3px 6px rgba(150, 150, 150, 0.2);
  
            position: relative;
            cursor: pointer;
        }

        /*Animations*/

        @keyframes blink {
            100% { transform: scale(2, 2); 
                opacity: 0;
            }
        }
    </style>
<h2>Activities for
<span id="ctl00_mainContent_lblStudent">KhoaNVHE153692 (Nguyễn Việt Khoa)</span></h2>
<p>
<b>Note</b>: These activities do not include extra-curriculum activities, such as
club activities ...
</p>
<p>
<b>Chú thích</b>: Các hoạt động trong bảng dưới không bao gồm hoạt động ngoại khóa,
ví dụ như hoạt động câu lạc bộ ...
</p>
<div id="ctl00_mainContent_ghichu">
<p>
Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br />
Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br />
Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br />
Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br />
Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br />
Little UK (LUK) thuộc tầng 5 tòa nhà Delta
</p>
    
    <%--Code--%>
</div>
 Lecturer: <input type="text" readonly="readonly" value="${requestScope.lecturer.lecturerName}"/>
        <form action="timetable" method="get">
            <input type="hidden" name="lecturerId" value="${param.lecturerId}"/>
            From: <input type="date" name="from" value="${requestScope.from}"/>
            To: <input type="date" name="to" value="${requestScope.to}"/>
            <input type="submit" value="View"/> 
        </form>
        <table border="1px">
            <tr>
                <td> </td>
                <c:forEach items="${requestScope.dates}" var="d">
                    <td>${d}<br/>${helper.getDayNameofWeek(d)}</td>
                    </c:forEach>
            </tr>
            <c:forEach items="${requestScope.timeSlots}" var="slot">
                <tr>
                    <td style="width: 50px"><b>Slot </b> ${slot.id}</td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td>
                            <c:forEach items="${requestScope.sessions}" var="ses">
                                <c:if test="${helper.compare(ses.date,d) eq 0 and (ses.timeSlot.id eq slot.id)}">
                                    <a href="lecturer/takeatt?sessionId=${ses.sessionId}">${ses.group.groupName}-${ses.group.subject.subjectName}</a>
                                    <br/>
                                    At ${ses.room.roomName}
                                    <c:if test="${ses.attanded}">
                                        <img src="" alt=""/>
                                    </c:if>
                                    <c:if test="${!ses.attanded}">
                                        <img src="" alt=""/>
                                    </c:if>
                                </c:if>
                                  
                            </c:forEach>
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
<p>
<b>More note / Chú thích thêm</b>:
</p>
<div id="ctl00_mainContent_divfoot"><ul><li>(<font color='green'>attended</font>): KhoaNVHE153692 had attended this activity / Nguyễn Việt Khoa đã tham gia hoạt động này</li><li>(<font color='red'>absent</font>): KhoaNVHE153692 had NOT attended this activity / Nguyễn Việt Khoa đã vắng mặt buổi này</li> <li>(-): no data was given / chưa có dữ liệu</li> </ul></div>
<p>
</p>
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
<b>Mọi góp ý, thắc mắc xin liên hệ: </b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13.333333969116211px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Phòng dịch vụ sinh viên</span>: Email: <a href="/cdn-cgi/l/email-protection#8eeae7ede6f8fbfde7e0e6f8e7ebe0cee8eba0ebeafba0f8e0"><span class="__cf_email__" data-cfemail="197d707a716f6c6a7077716f707c77597f7c377c7d6c376f77">[email&#160;protected]</span></a>.
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
<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script type="7edd18d5b20355bf4edc8943-text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-10421012-13']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
<script type="7edd18d5b20355bf4edc8943-text/javascript">
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
<script src="/cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="7edd18d5b20355bf4edc8943-|49" defer=""></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon='{"rayId":"76190983abd70972","token":"56c6dd7e4ecf4947aa540f48289e45af","version":"2022.10.3","si":100}' crossorigin="anonymous"></script>
</body>
</html>
