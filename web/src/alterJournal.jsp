<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Alterar Revista</title>
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
        <li>    <a href="index.jsp">Alterar</a> <span class="divider">/</span>  </li>
	<li class="active"> Alterar Revista </li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
        <fieldset class="span4">
          <legend>  Alteração da Revista  </legend>
          
          <form class="form-search">                             
                <button type="submit" class="btn" id="procura">Buscar Título</button> <input type="text"  id="tit"class="input-medium search-query">                              
          </form>
          
          <form autocomplete="on" class="span4" id="myform">
              <fieldset>
                    <legend>  Revista  </legend>  
                </fieldset>
          <table id ="tabel">
                
              
          </table>
          </form>
      </fieldset>
      </article>
    </section>
      
       
      <script>
          
          $(document).ready(function(){
              $('#procura').click(function(){
             $.ajax({
                    type: "POST",
                    url: "alteraJournal",
                    dataType: "html",                     
                    data:{titulo: $("#tit").val() }
                    }).done(function(data){                        
                        $("#tabel").html(data);   
                    });
              });
        
        
        
        
        
        
        
            
         });
      </script>
             <%@ include file="rodape.jsp"%>      
    </body>
</html>

