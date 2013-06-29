<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Buscar Termos Mesh</title>
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
                <%@ include file="rodape.jsp"%>
      
    </body>
</html>
