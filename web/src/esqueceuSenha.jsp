
<!DOCTYPE html>
<html lang="en">
  <head>
    <%@include file="chamadaCSS.jsp" %>  
  </head>
  
  
  <body class="container-fluid">
    <section class="row-fluid" id="span12">
        <header class="navbar">
            <title>Esqueceu Senha</title>
            <%@include file="menu.jsp" %>
        </header>
    </section>
      
    <nav>
    <ul class="breadcrumb">
	<li>    <a href="index.html">Página Inicial</a> <span class="divider">/</span> </li>
        <li>    <a href="src/logIn.html">Log In</a> <span class="divider">/</span>  </li> 
        <li class="active"> Esqueceu sua Senha? </li> 
    </ul>  
    </nav> 
      
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <form autocomplete="on" class="span4" action="esqueceuSenha" method="POST">
            <fieldset>
                <legend>
                    Recuperar a senha
                </legend>
                
                <div class="control-group">
                    <label class="control-label" for="inputEmail">Digite seu Email:</label>
                    <div class="controls">
                        <input type="text" id="inputEmail" name="email"/>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <button type="POST" class="btn" id="enviar">Enviar</button>
                    </div>
                </div>
                
            </fieldset>
        </form>
      </article>
    </section>
      
        <section class="row-fluid">
		<%@ include file="rodape.jsp"%>
	</section>
      
      <script>
          
          $(document).ready(function(){
              
            /*monitora a ação de clicar*/
            $('#cadastrar').click(function(){
                window.alert('Cadastro efetuado com sucesso!');
            });
            
            
         });
      </script>

      
      
      
    </body>
</html>

