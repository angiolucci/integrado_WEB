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
	<li> <a href="ajuda.jsp">Ajuda</a> <span class="divider">/</span> </li>
        <li class="active"> Login </li>
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
        <div class="span4"> 
            <legend>Login </legend>

            <p>Um usu�rio que j� possui registro no sistema e deseja acessar fun��es exclusivas
            para usu�rios registrados dever� realizar login no site.</p>

            <p> Ao clicar na op��o "Log In" > "Entrar" do menu superior, ser� poss�vel realizar
                esse login, entrando com o nome de usu�rio e a senha criados no registro do usu�rio.
            Caso ainda n�o esteja registrado, o usu�rio poder� criar uma conta no site atrav�s do link
            "Registrar-se", ao lado do bot�o "Entrar".</p>
            
            <p>Se o usu�rio j� estiver registrado, mas esquecer sua senha, tamb�m existe a possibilidade
            dele recuper�-la. Basta clicar em "Esqueceu sua senha?" ao lado do link de registro e digitar
            seu e-mail na tela seguinte.</p>
        
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
