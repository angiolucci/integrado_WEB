<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Journal</title>
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
    <link rel="stylesheet" href="css/bootstrap-responsive.css" type="text/css"/>

  
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
        <li>    <a href="journal.html">Cadastro Revista</a> <span class="divider">/</span>  </li>
	<li class="active"> Revista </li> 
    </ul>    
    </nav>  
      
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro Revista
                </legend>
                <p><span class="text-left"><label for="issn">ISSN <span id="erroissn" class="text-error"></span></label></span><span><input type="text" id="issn"></span></p>
                <p><span class="text-left"><label for="isoabreviation">ISO Abreviação <span id="erroiso" class="text-error"></span></label></span><span><input type="text" id="isoabreviation"></span></p>
                <p><span class="text-left"><label for="title">Título <span id="errotitulo" class="text-error"></span></label></span><span><input type="text" id="title"></span></p>
                <p><input type="submit" id="cadastrar" value="Cadastrar !" class="btn"></p>
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
            
            
            $('#isoabreviation').focusout(function(){
                var filtro = /^([A-Za-z. ]{1,100})$/;

                        if(filtro.exec($('#isoabreviation').val()) === null && $('#isoabreviation').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro ISO:  ');
                            });
                            $('#erroiso').fadeIn('slow', function(){
                                $(this).html('Apenas Caracteres Literais');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroiso').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#title').focusout(function(){
                var filtro = /^([A-Za-z 0-9)(-:"']{1,100})$/;

                        if(filtro.exec($('#title').val()) === null && $('#title').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Título:  ');
                            });
                            $('#errotitulo').fadeIn('slow', function(){
                                $(this).html('Apenas Letras');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errotitulo').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#issn').focusout(function(){
                var filtro = /^([0-9]{1,4}\-[0-9]{1,3}[a-zA-Z0-9]{0,1})$/;

                        if(filtro.exec($('#issn').val()) === null && $('#issn').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro ISSN:  ');
                            });
                            $('#erroissn').fadeIn('slow', function(){
                                $(this).html('Apenas Números ou caracter identificador');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroissn').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
            
          });  
          
      </script>
      
      
      
    </body>
</html>
