<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Buscar Termos Mesh</title>
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
        <li>    <a href="index.html">Consultar</a> <span class="divider">/</span>  </li>
	<li class="active"> Consultar Termos Mesh</li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        
          <div class="span3">
        </div>
          
          <fieldset class="span8">
          <legend>  Buscar Termos Mesh </legend>
          
          <form class="form-search">                             
                <button type="submit" class="btn">Buscar Termo</button> <input type="text" class="input-medium search-query"> 
          </form>
          <form autocomplete="on" class="span8" id="myform">
          
          <table class="table" >
                                 <thead>
					<tr>
						<th>
							Termos Mesh
                                                </th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							16S
						</td>
                                        </tr>
                                        <tr>
						<td>
                                                        18S
                                                </td>
                                        </tr>
                                        <tr>
                                                <td>
                                                        28S
                                                </td>
					</tr>
					
				</tbody>
			</table>
              
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
