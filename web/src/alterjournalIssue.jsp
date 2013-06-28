<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Alterar Edição da Revista</title>
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
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>



  
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
        <li>    <a href="index.html">Alterar</a> <span class="divider">/</span>  </li>
	<li class="active"> Alterar Edição da Revista</li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <fieldset class="span4">
          <legend>  Alteração da Edição da Revista  </legend>
          
          <form class="form-search">                             
                <button type="submit" class="btn">Buscar Revista</button> <input type="text" class="input-medium search-query"> 
                <br><br>
                <p><span class="text-left"><label for="estado">Edição </label></span><span class="text-left">          
                    <select name="estado" id="estado" class="text-left"> 
                        <option value="" selected></option>
                        <option value="1"></option>
                    </select>
                    </span>
                </p>
          </form>
          <form autocomplete="on" class="span4" id="myform">
              
                <fieldset>
                    <legend> Edição </legend>  
                </fieldset>  
              <fieldset>
                <p><span class="text-left"><label for="title" > Título </label></span>    <span><input type="text" id="title"></span></p>
                <p><span class="text-left"><label for="issue"> Issue <span class="text-error" id="erroissue"></span> </label></span>    <span><input type="text" id="issue"></span></p>
                <p><span class="text-left"><label for="volume"> Volume <span class="text-error" id="errovolume"></span> </label></span><span><input type="text" id="volume"></span></p>
                <p><span class="text-left"><label for="pubdate"> Data <span class="text-error" id="erropubdate"></span></label></span><span><input type="text" id="pubdate"></span></p>
                <p><span class="text-left"><label for="citedmedium"> Cited Medium <span class="text-error" id="errocited"></span></label></span><span><input type="text" id="citedmedium"></span></p>
                
                <!--<p><span class="text-error"></span><span class="text-error" id="desc-erro"></span><span id="erro"></span></p>-->
                
                <p><input type="button" id="editar" value="Editar" class="btn"> <input type="submit" id="salvar" value="Salvar" class="btn"> </p>            
              </fieldset>
              
          </form>
      </fieldset>
      </article>
    </section>
      
       
      <script>
          
          $(document).ready(function(){
              
            
         });
      </script>
                <footer class="row-fluid">
                    <section class="span12">
                        <br>
                        <address> 
                            <strong>PubMed, Ltda.</strong><br> 
                            Avenida Gen. Carneiro, 795<br> 
                            Sorocaba, SP 18043-000<br> 
                            <abbr title="Phone">Fone:</abbr> 
                            (19) 9309-5397
                        </address>
                    </section> 
		</footer>
      
    </body>
</html>
