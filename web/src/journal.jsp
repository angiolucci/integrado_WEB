<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Journal</title>
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
        <li>    <a href="journal.jsp">Cadastro Revista</a> <span class="divider">/</span>  </li>
	<li class="active"> Revista </li> 
    </ul>    
    </nav>  
      
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro Revista
                </legend>
                <p><span class="text-left"><label for="issn">ISSN <span id="erroissn" class="text-error"></span></label></span><span><input type="text" id="issn"></span></p>
                <p><span class="text-left"><label for="isoabreviation">ISO Abreviação <span id="erroiso" class="text-error"></span></label></span><span><input type="text" id="isoabreviation"></span></p>
                <p><span class="text-left"><label for="title">Título <span id="errotitulo" class="text-error"></span></label></span><span><input type="text" id="title"></span></p>
                <p><input type="submit" id="cadastrar" value="Cadastrar !" class="btn"></p>
                 <p id="cad"></p>
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
              
              $.ajax({
                    type: "POST",
                    url: "cadastrarJournal",
                    dataType: "html",                     
                    data:{issn: $("#issn").val(), iso: $("#isoabreviation").val(), title: $("#title").val() }
                    }).done(function(data){                        
                        $("#cad").html(data);   
                        
                    });
            });
            
            
            $('#isoabreviation').focusout(function(){
                var filtro = /^([A-Za-z. ]{1,100})$/;

                        if(filtro.exec($('#isoabreviation').val()) === null && $('#isoabreviation').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro ISO:  ');
                            });
                            $('#erroiso').fadeIn('slow', function(){
                                $(this).html('Apenas Caracteres Literais');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroiso').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#title').focusout(function(){
                var filtro = /^([A-Za-z 0-9)(-:"']{1,100})$/;

                        if(filtro.exec($('#title').val()) === null && $('#title').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Título:  ');
                            });
                            $('#errotitulo').fadeIn('slow', function(){
                                $(this).html('Apenas Letras');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errotitulo').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#issn').focusout(function(){
                var filtro = /^([0-9]{1,4}\-[0-9]{1,3}[a-zA-Z0-9]{0,1})$/;

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
              
            
          });  
          
      </script>
      
      
      
    </body>
</html>
