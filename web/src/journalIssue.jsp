<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Journal Issue</title>
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
        <li>    <a href="journalIssue.jsp">Cadastro Edição da Revista</a> <span class="divider">/</span>  </li>
	<li class="active"> Edição da Revista </li> 
    </ul>    
    </nav>  
      
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro Edição da Revista
                </legend>
                
                <p><span class="text-left"><label for="titlejournal"> Revista </label></span><span class="text-left">
                    <select name="titlejournal" id="titlejournal">
                        <option value="" selected></option>
                        <option value="1">Acta Cardiologica</option>
                        <option value="2">Biometrika</option>                
                        <option value="3">Harefuah</option>
                        <option value="4">Respiratory Care</option>
                        <option value="5">Kardiologia</option>
                    </select>
                   </span>
                </p>
                
                <p><span class="text-left"><label for="issue">ISSUE <span class="text-error" id="erroissue"></span> </label></span>    <span><input type="text" id="issue"></span></p>
                <p><span class="text-left"><label for="volume">Volume <span class="text-error" id="errovolume"></span> </label></span><span><input type="text" id="volume"></span></p>
                <p><span class="text-left"><label for="pubdate">Data de Publicação <span class="text-error" id="erropubdate"></span></label></span><span><input type="date" id="pubdate"></span></p>
                <p><span class="text-left"><label for="citedmedium">Cited Medium <span class="text-error" id="errocited"></span></label></span><span><input type="text" id="citedmedium"></span></p>
                
                <!--<p><span class="text-error"></span><span class="text-error" id="desc-erro"></span><span id="erro"></span></p>-->
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
            
            
            $('#issue').focusout(function(){
                var filtro = /^([0-9]{1,10})$/;

                        if(filtro.exec($('#issue').val()) === null && $('#issue').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('        ');
                            });
                            $('#erroissue').fadeIn('slow', function(){
                                $(this).html('Apenas Números');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroissue').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#volume').focusout(function(){
                var filtro = /^([0-9]{1,10})$/;

                        if(filtro.exec($('#volume').val()) === null && $('#volume').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Volume:  ');
                            });
                            $('#errovolume').fadeIn('slow', function(){
                                $(this).html('Apenas Números');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errovolume').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#issn').focusout(function(){
                var filtro = /^([0-9]{4,4}\-[0-9]{3,3}[xX0-9]{1,1})$/;

                        if(filtro.exec($('#issn').val()) === null && $('#issn').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro ISSN:  ');
                            });
                            $('#erroissn').fadeIn('slow', function(){
                                $(this).html('Apenas Números ou caracter identificador');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroissn').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#citedmedium').focusout(function(){
                var filtro = /^([A-Za-z]{1,100})$/;

                        if(filtro.exec($('#citedmedium').val()) === null && $('#citedmedium').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro CitedMedium:  ');
                            });
                            $('#errocited').fadeIn('slow', function(){
                                $(this).html('Apenas Letras');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errocited').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              
            
          });  
          
      </script>

      
      
      
    </body>
</html>
