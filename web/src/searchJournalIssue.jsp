<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Buscar Edição da Revista</title>
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
	<li class="active"> Consultar Edição da Revista</li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span3">
        </div>
          
          <fieldset class="span8">
          <legend>  Busca Edição da Revista </legend>
          
          <form class="form-search">                             
                <button type="submit" class="btn">Buscar Edição </button> <input type="text" class="input-medium search-query"> 
          </form>
          <form autocomplete="on" class="span8" id="myform">
          
          <table class="table" >
                                 <thead>
					<tr>
						<th>
							Issue
                                                </th>
                                                <th>
							Volume
                                                </th>
                                                <th>
							ISSN
                                                </th>
                                                <th>
							Date
                                                </th>
                                                <th>
							CitedMedium
                                                </th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							32
						</td>
                                                <td>
							234
						</td>
                                                <td>
							3213-3243
						</td>
                                                <td>
							13/04/1987
						</td>
                                                <td>
							Print
						</td>
                                        </tr>
                                        <tr>
						<td>
							32
						</td>
                                                <td>
							2332
						</td>
                                                <td>
							3343-3243
						</td>
                                                <td>
							13/04/1923
						</td>
                                                <td>
							Internet
						</td>
                                        </tr>
                                        <tr>
						<td>
							32
						</td>
                                                <td>
							2
						</td>
                                                <td>
							3209-892X
						</td>
                                                <td>
							23/12/1823
						</td>
                                                <td>
							Print
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