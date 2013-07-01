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
	<li>    <a href="index.jsp">Página Inicial</a> <span class="divider">/</span> </li>           
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

            <p>Um usuário que já possui registro no sistema e deseja acessar funções exclusivas
            para usuários registrados deverá realizar login no site.</p>

            <p> Ao clicar na opção "Log In" > "Entrar" do menu superior, será possível realizar
                esse login, entrando com o nome de usuário e a senha criados no registro do usuário.
            Caso ainda não esteja registrado, o usuário poderá criar uma conta no site através do link
            "Registrar-se", ao lado do botão "Entrar".</p>
            
            <p>Se o usuário já estiver registrado, mas esquecer sua senha, também existe a possibilidade
            dele recuperá-la. Basta clicar em "Esqueceu sua senha?" ao lado do link de registro e digitar
            seu e-mail na tela seguinte.</p>
        
            <a href="ajuda.jsp">Voltar ao conteúdo da ajuda</a>
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
