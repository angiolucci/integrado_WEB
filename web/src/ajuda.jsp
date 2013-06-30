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
	<li>    <a href="index.jsp">P�gina Inicial</a> <span class="divider">/</span> </li>           
	<li class="active"> Ajuda </li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
        <div class="span4"> 
            <legend>Ajuda do Sistema PubMed </legend>

            <p>Bem Vindos ao sistema de acesso � base de dados PubMed.</p>

            <p> O sistema PubMed permite que o usu�rio tenha acesso a uma base de dados com
            v�rias informa��es sobre estruturas moleculares de prote�nas e genes, al�m
            de fornecer acesso � literatura cient�fica relacionada.</p>
            
            <legend>Conte�do da Ajuda</legend>
            <ul class="navbar">
                <li><a href="ajudaLogin.jsp">Login</a>
                <li><a href="ajudaRegistro.jsp">Criar conta</a>
                <li><a href="ajudaConfiguracoes.jsp">Configura��es</a>
                <li><a href="ajudaCadastro.jsp">Cadastro</a>
                <li><a href="ajudaAlteracao.jsp">Altera��o</a>
                <li><a href="ajudaConsulta.jsp">Consulta</a>
                <li><a href="ajudaExclusao.jsp">Exclus�o</a>
            </ul>

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
