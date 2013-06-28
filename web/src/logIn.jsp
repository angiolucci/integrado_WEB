
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Register Author</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="img/favicon.png">
  
        <script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
      
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
          <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Log In
                </legend>
                
                <div class="control-group">
                    <label class="control-label" for="inputEmail">Email</label>
                    <div class="controls">
                        <input type="text" id="inputEmail" />
                    </div>
                </div>
            
		<div class="control-group">
                    <label class="control-label" for="inputPassword">Senha</label>
                    <div class="controls">
                        <input type="password" id="inputPassword" />
                    </div>
		</div>
            
                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox"><input type="checkbox" /> Relembrar</label> <button type="submit" class="btn">Entrar</button> <a href="cadastrarUsuario.html">Registrar-se</a>
                    </div>
                </div>
                
            </fieldset>
        </form>
      </article>
    </section>
      
        <section class="row-fluid">
		<footer class="span12">
                        <br>
                        <address> 
                            <strong>PubMed, Ltda.</strong><br> 
                            Avenida Gen. Carneiro, 795<br> 
                            Sorocaba, SP 18043-000<br> 
                            <abbr title="Phone">Fone:</abbr> 
                            (19) 9309-5397
                        </address>
		</footer>
                
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

