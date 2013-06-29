
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Register Author</title>
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
        <li>    <a href="registerAuthor.html.html">Cadastro Autores</a> <span class="divider">/</span>  </li>
	<li class="active">Autores</li> 
    </ul>  
    </nav>  
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro de Autores
                </legend>
                <p><span class="text-left"><label for="forename">Nome <span id="erronome" class="text-error"></span></label></span><span><input type="text" id="forename"></span></p>
                <p><span class="text-left"><label for="middlename">Sobrenome <span id="errosobrenome" class="text-error"></span></label></span><span><input type="text" id="middlename"></span></p>
                <p><span class="text-left"><label for="lastname">Último Nome <span id="erroultimonome" class="text-error"></span></label></span><span><input type="text" id="lastname"></span></p>
                <p><span class="text-left"><label for="initials">Iniciais <span id="erroinitials" class="text-error"></span></label></span><span><input type="text" id="initials"></span></p>
                <!--<p><span class="text-center"></span><span id="desc-erro"></span><span id="erro"></span></p-->
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
            
            
            $('#forename').focusout(function(){
                var filtro = /^([A-Za-z]{1,100})$/;

                        if(filtro.exec($('#forename').val()) === null && $('#forename').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Nome:  ');
                            });
                            $('#erronome').fadeIn('slow', function(){
                                $(this).html('Apenas Letras');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erronome').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#middlename').focusout(function(){
                var filtro = /^([A-Za-z]{1,100})$/;

                        if(filtro.exec($('#middlename').val()) === null && $('#middlename').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Sobrenome:  ');
                            });
                            $('#errosobrenome').fadeIn('slow', function(){
                                $(this).html('Apenas Letras');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errosobrenome').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#lastname').focusout(function(){
                var filtro = /^([A-Za-z]{1,100})$/;

                        if(filtro.exec($('#lastname').val()) === null && $('#lastname').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Último Nome:  ');
                            });
                            $('#erroultimonome').fadeIn('slow', function(){
                                $(this).html('Apenas Letras');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroultimonome').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#initials').focusout(function(){
                var filtro = /^([A-Za-z]{1,100})$/;

                        if(filtro.exec($('#initials').val()) === null && $('#initials').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Iniciais:  ');
                            });
                            $('#erroinitials').fadeIn('slow', function(){
                                $(this).html('Apenas Letras');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroinitials').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
            
          });  
          
      </script>
      
    </body>
</html>
