<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Ajuda</title>
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
	<li>    <a href="index.html">P�gina Inicial</a> <span class="divider">/</span> </li>           
	<li> <a href="ajuda.jsp">Ajuda</a> <span class="divider">/</span> </li>
        <li class="active"> Registro </li>
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
        <div class="span4"> 
            <legend>Registro </legend>

            <p>Para poder acessar algumas funcionalidades, o usu�rio dever� estar registrado
                no sistema da PubMed.</p>

            <p> Ao clicar na op��o "Log In" > "Crie uma conta" do menu superior (ou no link
            "Registrar-se" na p�gina de login) um formul�rio para registro ser� aberto. Nele,
            o usu�rio poder� criar um nome de usu�rio e uma senha para realizar login no sistema,
            inserindo seus dados pessoais (e-mail, data de nascimento, sexo, endere�o e telefone).</p>
        
            <a href="ajuda.jsp">Voltar ao conte�do da ajuda</a>
        <br><br>
        </div>    
      </article>
    </section>
      
       
      <script>
          
          $(document).ready(function(){
              
            
         });
      </script>
          <%@ include file="rodape.jsp"%>     
    </body>
</html>
