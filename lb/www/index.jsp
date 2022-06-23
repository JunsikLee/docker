<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.InetAddress" %>
<html>
    <head>
        <title>로드 밸런서</title>
    </head>
    <body>
        <%
            InetAddress inet= InetAddress.getLocalHost();
        %>

        클라이언트ip <%=request.getRemoteAddr()%><br>
        요청URI <%=request.getRequestURI()%><br>
        컨텍스트경로 <%=request.getContextPath()%><br>
        서버이름 <%=request.getServerName()%><br>
        서버포트 <%=request.getServerPort()%><br>
        <br>
        requested URL: <%=request.getRequestURL()%><br>
        requested Info: <%=request.getRequestURI()%><br>
        server ip: <%=inet.getHostAddress()%>
    </body>
</html>
