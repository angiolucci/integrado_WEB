<%@page import="model.MeshHeading"%>
<%@page import="java.util.List"%>
<%@page import="controle.buscaMesh"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Mesh Terms</title>
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
        <li>    <a href="meshHeading.html">Cadastro Mesh-Termos</a> <span class="divider">/</span>  </li>
	<li class="active"> Mesh-Termos</li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <form autocomplete="on" class="span4" action="" method="get">
            <fieldset>
                <legend>
                    Cadastro Mesh Termos
                </legend>
                <p><span class="text-left"><label for="description">Descrição <span id="errodesc" class="text-error"></span></label></span><span><input type="text" id="description"></span></p>
                <!--<p><span class="text-center"></span><span id="desc-erro"></span><span id="erro"></span></p> -->
                <p><input type="submit" id="cadastrar" value="Cadastrar !" class="btn"></p>
            </fieldset>
        </form>
      </article>
    </section>
        
       
        
        
      <script>
          
          $(document).ready(function(){
              
            /*monitora a ação de clicar*/
            $('#cadastrar').click(function(){
                window.alert('Cadastro efetuado com sucesso!');
            });
            
            
            $('#description').focusout(function(){
                var filtro = /^([a-z]{1,100})$/;

                        if(filtro.exec($('#description').val()) === null && $('#description').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Descrição:  ');
                            });
                            $('#errodesc').fadeIn('slow', function(){
                                $(this).html('Apenas Letras minúsculas');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errodesc').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });                                       

  
         });
      </script>
               <%@ include file="rodape.jsp"%>
    </body>
    
		
                
      
</html>
