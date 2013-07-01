<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Publication Type</title>
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
        <li>    <a href="pubType.jsp">Cadastro Tipo de Publicação</a> <span class="divider">/</span>  </li>
	<li class="active"> Tipo de Publicação</li> 
    </ul>  
    </nav>
      
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <form autocomplete="on" class="span4" method="get" action="cadastrarPubtype">
            <fieldset>
                <legend>
                    Cadastro Tipo de Publicação
                </legend>
                <p><span class="text-left"><label for="pubtype">Tipo de Publicação <span id="erropubtype" class="text-error"></span></label></span><span><input type="search" id="pubtype"></span></p>
                <!--<p><span class="text-center"></span><span id="desc-erro"></span><span id="erro"></span></p>-->
                <p><input type="submit" id="cadastrar" value="Cadastrar !" class="btn"></p>
            </fieldset>
        </form>
      </article>
    </section>
      
        <section class="row-fluid">
		<%@ include file="rodape.jsp"%>
                
	</section>
      <script>
          
          $(document).ready(function(){
              
            /*monitora a ação de clicar*/
            /*$('#cadastrar').click(function(){
                window.alert('Cadastro efetuado com sucesso!');
            });
            */
            
            $('#pubtype').focusout(function(){
                var filtro = /^([A-Za-z.,:-]{1,100})$/;

                        if(filtro.exec($('#pubtype').val()) === null && $('#pubtype').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Publication Type:  ');
                            });
                            $('#erropubtype').fadeIn('slow', function(){
                                $(this).html('Apenas Caracteres Literais    ');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erropubtype').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              
              var alCities = ['Baltimore', 'Boston', 'New York', 'Tampa Bay', 
                      'Toronto', 'Chicago', 'Cleveland', 'Detroit', 'Kansas City', 
                      'Minnesota', 'Los Angeles', 'Oakland', 'Seattle', 'Texas'].sort();
              $('#pubtype').typeahead(
                  {
                    source: alCities, 
                    items:5
                  }
              );
              
         });
      </script>
      
    </body>
</html>
