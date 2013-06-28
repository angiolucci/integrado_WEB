<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Deletar Termos Mesh</title>
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
        <li>    <a href="index.html">Deletar</a> <span class="divider">/</span>  </li>
	<li class="active"> Deletar Termos Mesh </li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
         <fieldset class="span4">
          <legend>  Exclusão Termos Mesh  </legend>
          
          <form class="form-search">                             
                <button type="submit" class="btn">Search</button> <input type="text" class="input-medium search-query">                              
          </form>
          <form autocomplete="on" class="span4" id="myform">
              
                <fieldset>
                    <legend>MeshHeading</legend>  
                </fieldset>
              <fieldset>
                <p><span class="text-left"><label for="mesh"> Termos Mesh <span class="text-error" id="erromesh"></span> </label></span><span><input type="text" id="mesh"></span></p>                
                <!--<p><span class="text-error"></span><span class="text-error" id="desc-erro"></span><span id="erro"></span></p>-->
                
                <p> <input type="button" id="apagar" value="Apagar" class="btn"> </p>            
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

