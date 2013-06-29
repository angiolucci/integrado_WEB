<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Buscar Revistas</title>
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
        <li>    <a href="index.html">Consultar</a> <span class="divider">/</span>  </li>
	<li class="active"> Consultar Revistas </li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span3">
        </div>
          
          <fieldset class="span8">
          <legend>  Busca Revistas  </legend>
          
          <form class="form-search">                             
                <button type="submit" class="btn">Buscar Revista</button> <input type="text" class="input-medium search-query"> 
          </form>
          <form autocomplete="on" class="span8" id="myform">
          
          <table class="table" >
                                 <thead>
					<tr>
						<th>
							ISSN
                                                </th>
                                                <th>
							ISO Abreviação
                                                </th>
                                                <th>
							Título
                                                </th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							0942-3422
						</td>
                                                <td>
							Acta Cardiol
						</td>
                                                <td>
							Biomedicina Familiar
						</td>
                                        </tr>
                                        <tr>
						<td>
							0942-3422
						</td>
                                                <td>
							Acta 
						</td>
                                                <td>
							Biomedicina Lekaronski
						</td>
                                        </tr>
                                        <tr>
                                                <td>
							0942-3422
						</td>
                                                <td>
							Acta Kardil
						</td>
                                                <td>
							Biomedicina RuSki
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
               <%@ include file="rodape.jsp"%>
    </body>
</html>
