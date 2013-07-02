
<!DOCTYPE html>
<html lang="en">
  <head>
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
        <li>    <a href="logIn.html">Log In</a> <span class="divider">/</span>  </li> 
        <li class="active"> Log In </li> 
    </ul>  
    </nav> 
      
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <form autocomplete="on" class="span4" action="controleLogin" method="POST">
            <fieldset>
                <legend>
                    Bem vindo
                </legend>
                
                <div class="control-group">
                    <label class="control-label" for="inputEmail">Nome de usuário</label>
                    <div class="controls">
                        <input type="text" id="inputEmail" name="login" placeholder="username"/>
                    </div>
                </div>
            
		<div class="control-group">
                    <label class="control-label" for="inputPassword">Senha</label>
                    <div class="controls">
                        <input type="password" id="inputPassword" name="senha" placeholder="Insira sua senha"/>
                    </div>
		</div>
            
                <div class="control-group">
                    <div class="controls">
                        <button type="submit" class="btn">Entrar</button>
                        <a href="cadastrarUsuario.jsp">Registrar-se</a>
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
            
            
            $('#description').focusout(function(){
                var filtro = /^([a-z]{1,100})$/;

                        if(filtro.exec($('#description').val()) === null && $('#description').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Descrição:  ');
                            });
                            $('#erro').fadeIn('slow', function(){
                                $(this).html('Apenas Letras minúsculas');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
         });
      </script>

      
      
      
    </body>
</html>

