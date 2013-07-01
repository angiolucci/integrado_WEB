<%-- 
    Document   : logout
    Created on : 29/06/2013, 17:09:04
    Author     : vinicius
--%>

<%@page import="model.SystemUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        request.getSession().invalidate();
        response.sendRedirect("index.jsp");
    %>
    
</html>
