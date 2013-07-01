<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Delete Journal</title>
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
	<li>    <a href="index.jsp">P�gina Inicial</a> <span class="divider">/</span> </li>
        <li>    <a href="index.jsp">Deletar</a> <span class="divider">/</span>  </li>
	<li class="active"> Deletar Revista </li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <fieldset class="span4">
          <legend>  Exclus�o da Revista  </legend>
          
          <form class="form-search">                             
                <button type="submit" class="btn">Search</button> <input type="text" class="input-medium search-query">                              
          </form>
          <form autocomplete="on" class="span4" id="myform">
              
                <fieldset>
                    <legend>  Revista  </legend>  
                </fieldset>
              <fieldset>
                <p><span class="text-left"><label for="isoabreviation"> Abrevia��o ISO <span class="text-error" id="isoabreviation"></span> </label><input type="text" id="isoabreviation"></span></p>
                <p><span class="text-left"><label for="issn"> ISSN <span class="text-error" id="erroissn"></span> </label></span>    <span><input type="text" id="issn"></span></p>
                <p><span class="text-left"><label for="title"> Title <span class="text-error" id="errotitle"></span> </label></span><span><input type="text" id="title"></span></p>
                
                <!--<p><span class="text-error"></span><span class="text-error" id="desc-erro"></span><span id="erro"></span></p>-->
                
                <p> <input type="submit" id="apagar" value="Apagar" class="btn"> </p>            
              </fieldset>
              
          </form>
      </fieldset>
      </article>
    </section>
      
                <%@ include file="rodape.jsp"%>
      
    </body>
</html>

