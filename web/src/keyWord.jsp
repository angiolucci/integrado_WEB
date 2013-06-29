<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Key Word</title>
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
                    Cadastro Palavras-Chave
                </legend>
                <p><span class="text-left"><label for="keyword">Palavra-Chave <span id="errokey" class="text-error"></span></label></span><span><input type="text" id="keyword"></span></p>
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
            
            
            $('#keyword').focusout(function(){
                var filtro = /^([a-z)(-.0-9]{1,100})$/;

                        if(filtro.exec($('#keyword').val()) === null && $('#keyword').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Descrição:  ');
                            });
                            $('#errokey').fadeIn('slow', function(){
                                $(this).html('Apenas Caracteres Literais minúsculos');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errokey').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
         });
      </script>

      
    </body>
</html>

