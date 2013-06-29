<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Register Name of Substance</title>
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
        <li>    <a href="keyWord.html">Cadastro Palavras-Chaves</a> <span class="divider">/</span>  </li>
	<li class="active"> Palavras - Chaves</li> 
    </ul>    
    </nav>  
      
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro Substâncias Químicas
                </legend>
                <p><span class="text-left"><label for="nameofsubstance">Nome da Substância <span class="text-error" id="erroname"></span></label></span><span><input type="text" id="nameofsubstance"></span></p>
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
            $('#cadastrar').click(function(){
                window.alert('Cadastro efetuado com sucesso!');
            });
            
            
            $('#nameofsubstance').focusout(function(){
                var filtro = /^([a-z.)(0-9  ]{1,100})$/;

                        if(filtro.exec($('#nameofsubstance').val()) === null && $('#nameofsubstance').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('      ');
                            });
                            $('#erroname').fadeIn('slow', function(){
                                $(this).html('Apenas Caracteres Literais');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroname').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });              
            
          });  
          
      </script>
      
    </body>
</html>
