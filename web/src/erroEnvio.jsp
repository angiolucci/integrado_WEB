<%-- 
    Document   : erroEnvio
    Created on : 01/07/2013, 10:47:27
    Author     : Guilherme
--%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Erro</title>
    <%@include file="chamadaCSS.jsp" %>  
  </head>
  
  
  <body class="container-fluid">
    <section class="row-fluid" id="span12">
        <header class="navbar">
             <%@include file="menu.jsp" %>
        </header>
    </section>
      
         
    <nav>
    <ul class="breadcrumb">
	<li>    <a href="index.html">Página Inicial</a> <span class="divider">/</span> </li>           
	<li> <a href="src/logIn.jsp">LogIn</a> <span class="divider">/</span> </li>
        <li class="active"> Erro </li>
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
        <div class="span4"> 
            <legend>Erro </legend>
            <p>Não foi possível realizar o envio de sua senha. Verifique se o e-mail digitado está correto.</p>
            <a href="src/logIn.jsp">Voltar para login</a>
        <br><br>
        </div>    
      </article>
    </section>
      
       
          <%@ include file="rodape.jsp"%>     
    </body>
</html>
