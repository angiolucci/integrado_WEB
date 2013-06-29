<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Consultar Artigo</title>
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
                <button type="submit" class="btn">Buscar Título</button> <input type="text" class="input-medium search-query"> 
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
							Afiliação
						</th>
                                                <th>
							Status
						</th>
                                                <th>
							Título
						</th>
                                                
                                                <th>
							Página Inicial
						</th>
                                                <th>
							Página Final
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
							USP São Carlos
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
               <%@ include file="rodape.jsp"%>
      
    </body>
</html>


