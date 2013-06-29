<%-- 
    Document   : buscaSubstancia
    Created on : 29/06/2013, 01:48:27
    Author     : Mercês
--%>
<%@page import="java.util.List"%>
<%@page import="model.Substance"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>JSP Page</title>
        <%@include file="chamadaCSS.jsp" %>  
    </head>
    <body>
        <h1>Hello World!</h1>

        <%
            List<Substance> substancia = (List<Substance>) request.getAttribute("listaSubstance");
            if (substancia.isEmpty()) {
        %>
        <h1>Não foram encontrados usuários cadastrados nessa cidade. :(</h1>
        <% } else {%>

        <table class="table" >

            <thead>
                <tr>    <th>    Nome da Substância  </th>   </tr>
            </thead>
            <tbody>
                <%
                    for (Substance s : substancia) {
                        out.println("<tr>"
                                + "<td>" + s.getNameOfSubstance() + "</td>"
                                + "<tr>");
                    }
                %>

            </tbody>
        </table>
        
        <% }%>
        
        <%@ include file="rodape.jsp"%>
    </body>
</html>
