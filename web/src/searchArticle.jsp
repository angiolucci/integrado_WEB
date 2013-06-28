<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Consultar Artigo</title>
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
	<li>    <a href="index.html">P�gina Inicial</a> <span class="divider">/</span> </li>
        <li>    <a href="index.html">Consultar</a> <span class="divider">/</span>  </li>
	<li class="active"> Consultar Artigo </li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span3">
        </div>
          
          <fieldset class="span8">
          <legend>  Buscar do Artigo  </legend>
          
          <form class="form-search">                             
                <button type="submit" class="btn">Buscar T�tulo</button> <input type="text" class="input-medium search-query"> 
          </form>
          <form autocomplete="on" class="span8" id="myform">
          
          <table class="table" >
                                 <thead>
					<tr>
						<th>
							Article ID
						</th>
						<th>
							Issue
						</th>
						<th>
							ISSN
						</th>
						<th>
							Volume
						</th>
                                                <th>
							Afilia��o
						</th>
                                                <th>
							Status
						</th>
                                                <th>
							T�tulo
						</th>
                                                
                                                <th>
							P�gina Inicial
						</th>
                                                <th>
							P�gina Final
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							12345678
						</td>
						<td>
							12
						</td>
						<td>
                                                        0943-9384
						</td>
						<td>
							100
						</td>
                                                <td>
							UFSCar Sorocaba
						</td>
                                                <td>
							eppublish
						</td>
                                                <td>
							Compiladores
						</td>
                                                <td>
							12
						</td>
                                                <td>
							21434
						</td>
					</tr>
					<tr class="success">
						<td>
							12232678
						</td>
						<td>
							32
						</td>
						<td>
							1234-2343
						</td>
						<td>
							43
						</td>
                                                <td>
							USP S�o Carlos
						</td>
                                                <td>
							eppublish
						</td>
                                                <td>
							Compiladores
						</td>
                                                <td>
							34
						</td>
                                                <td>
							435
						</td>
					</tr>
					<tr class="error">
						<td>
							12232623
						</td>
						<td>
							23
                                                </td>
						<td>
							1234-2323
						</td>
						<td>
							434
						</td>
                                                <td>
							Unicamp
						</td>
                                                <td>
							eppublish
						</td>
                                                <td>
							Compiladores
						</td>
                                                <td>
							12
						</td>
                                                <td>
							34
						</td>
                                                
					</tr>
					<tr class="warning">
						<td>
							135432623
						</td>
						<td>
							2323
						</td>
						<td>
							2324-2323
						</td>
						<td>
							2
						</td>
                                                <td>
							UFPE
						</td>
                                                <td>
							ppublish
						</td>
                                                <td>
							Compiladores
						</td>
                                                <td>
							321
						</td>
                                                <td>
							4324
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


