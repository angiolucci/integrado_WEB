<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Deletar Artigos</title>
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
	<li>    <a href="index.jsp">Página Inicial</a> <span class="divider">/</span> </li>
        <li>    <a href="index.jsp">Deletar</a> <span class="divider">/</span>  </li>
	<li class="active"> Deletar Artigos </li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          
          <fieldset class="span4">
          <legend>  Exclusão do Artigo  </legend>
          
          <form class="form-search">                             
                <button type="submit" class="btn">Search</button> <input type="text" class="input-medium search-query"> 
          </form>
          <form autocomplete="on" class="span4" id="myform">
              <fieldset>
                  <fieldset>
                    <legend> Revista </legend>
                  </fieldset>
                  <p><span class="text-left"><label for="titlejournal">Titulo <span id="errotitlejournal" class="text-error"></span></label></span><span><input type="text" id="titlejournal" name="titlejournal"></span></p>    
                  <p><span class="text-left"><label for="erroedicao">Edição <span id="erroedicao" class="text-error"></span></label></span><span><input type="text" id="erroedicao" name="erroedicao"></span></p>     
                  <p><span class="text-left"><label for="journalissue">Volume <span id="errojournalissue" class="text-error"></span></label></span><span><input type="text" id="jornalissue" name="journalissue"></span></p>    
                <fieldset>
                    <legend> Autor </legend>
                    <p><span class="text-left"><label for="forename">Nome <span id="erronome" class="text-error"></span></label></span><span><input type="text" id="forename"></span></p>
                    <p><span class="text-left"><label for="middlename">Sobrenome <span id="errosobrenome" class="text-error"></span></label></span><span><input type="text" id="middlename"></span></p>
                </fieldset>
                  <fieldset>  
                      <legend>Artigo </legend>
                    <p><span class="text-left"><label for="articleid">Article ID <span id="erroid" class="text-error"></span></label></span><span><input type="text" id="articleid" name="articleid"></span></p>  
                    <p><span class="text-left"><label for="affiliation">Affiliation <span id="erroaffiliation" class="text-error"></span></label></span><span><input type="text" id="affiliation" name="affiliation"></span></p>                      
                    <p><span class="text-left"><label for="mesh">Termos Mesh <span id="erromesh" class="text-error"></span></label></span><span><input type="text" id="mesh"></span></p>    
                    <p><span class="text-left"><label for="type">Tipo Publicação <span id="errotype" class="text-error"></span></label></span><span><input type="text" id="type"></span></p>    
                    <p><span class="text-left"><label for="status">Status <span id="errostatus" class="text-error"></span></label></span><span><input type="text" id="status"></span></p>  
                    <p><span class="text-left"><label for="keyword">Palavra-Chave <span id="errokey" class="text-error"></span></label></span><span><input type="text" id="keyword"></span></p>
                    <p><span class="text-left"><label for="title">Title <span id="errotitle" class="text-error"></span></label></span><span><input type="text" id="title" name="title"></span></p>
                    <p><span class="text-left"><label for="pagbegin">Pag. Begin <span id="errobegin" class="text-error"></span></label></span><span><input type="text" id="pagbegin" name="pagbegin"></span></p>
                    <p><span class="text-left"><label for="pagend">Pag. End <span id="erroend" class="text-error"></span></label></span><span><input type="text" id="pagend" name="pagend"></span></p>
                  </fieldset>  
                  <p><input type="submit" id="apagar" value="Apagar" class="btn"> </p>            
            </fieldset>
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


