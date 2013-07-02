
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Register Article</title>
    <%@include file="chamadaCSS.jsp" %>
    <script>
        var kw = "";
        var at = "";
        
        function addKW(){
            if (document.getElementById("keyword").value != ""){
            kw += document.getElementById("keyword").value+";";
            document.getElementById("keyword").value = "";
            document.getElementById("listaKW").val = kw;
            window.alert( 'Palavra-chave salva' );
            }
        }
        
         function addAUTHOR(){
            if (document.getElementById("forename").value !== "" && document.getElementById("middlename").value !== ""){
            at += document.getElementById("forename").value+","+document.getElementById("middlename").value + ";" ;
            document.getElementById("forename").value = "";
            document.getElementById("middlename").value = "";
            document.getElementById("listaAuthor").val = at;
            window.alert('Autor salvo');
            }
        }
    </script>    
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
        <li>    <a href="registerArticle.jsp">Cadastro Artigos</a> <span class="divider">/</span>  </li>
	<li class="active"> Artigos</li> 
    </ul>  
    </nav>
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
          <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro de Artigos
                </legend>


                <fieldset>
                    <legend>Artigo</legend>
                <p><span class="text-left"><label for="articleid">Article ID <span id="erroid" class="text-error"></span></label></span><span><input type="text" id="articleid" name="articleid"></span></p>
                <!--<p><span class="text-left"><label for="issue">Issue <span id="erroissueid" class="text-error"></span></label></span><span><input type="text" id="issue" name="issue"></span></p>-->
                <!--<p><span class="text-left"><label for="issn">ISSN <span id="erroissnid" class="text-error"></span></label></span><span><input type="text" id="issn" name="issn"></span></p>-->
                <!--<p><span class="text-left"><label for="volume">Volume <span id="errovolume" class="text-error"></span></label></span><span><input type="text" id="volume" name="volume"></span></p>-->
                <p><span class="text-left"><label for="affiliation">Affiliation <span id="erroaffiliation" class="text-error"></span></label></span><span><input type="text" id="affiliation" name="affiliation"></span></p>
                <!--<p><span class="text-left"><label for="pubtype">Tipo de Publicação <span id="errotipo" class="text-error"></span></label></span><span><input type="text" id="pubtype" name="pubtype"></span></p>-->
                <p><span class="text-left"><label for="publicationstatus">Tipo de Publicação </label></span><span class="text-left">
                    <select name="tipopublicacao" id="tipopublicacao">
                        <option value="" selected></option>
                        <option value="AR">Artigo de Revista</option>
                        <option value="R">Research</option>                
                        <option value="RS">Research Support</option>
                    </select>
                   </span>
                </p>
                <p><span class="text-left"><label for="publicationstatus">Status da Publicação <span id="errostatus" class="text-error"></span></label></span><span class="text-left">
                    <select name="publicationstatus" id="publicationstatus">
                        <option value="" selected></option>
                        <option value="aheadofprint">aheadofprint</option>
                        <option value="epublish">epublish</option>                
                        <option value="ppublish">ppublish</option>
                    </select>
                   </span>
                </p>
                <p><span class="text-left"><label for="keyword">Palavra-Chave <span id="errokey" class="text-error"></span></label></span><span><input type="text" id="keyword"></span><span><input type="button" value="+" onclick="addKW()"></input></span></p>
                 

                <p><span class="text-left"><label for="title">Title <span id="errotitle" class="text-error"></span></label></span><span><input type="text" id="title" name="title"></span></p>
                <p><span class="text-left"><label for="pagbegin">Pag. Begin <span id="errobegin" class="text-error"></span></label></span><span><input type="text" id="pagbegin" name="pagbegin"></span></p>
                <p><span class="text-left"><label for="pagend">Pag. End <span id="erroend" class="text-error"></span></label></span><span><input type="text" id="pagend" name="pagend"></span></p>
                </fieldset>
                
                <fieldset>
                    <legend> Autor </legend>
                    <p><span class="text-left"><label for="forename">Nome <span id="erronome" class="text-error"></span></label></span><span><input type="text" id="forename"></span></p>
                    <p><span class="text-left"><label for="middlename">Sobrenome <span id="errosobrenome" class="text-error"></span></label></span><span><input type="text" id="middlename"></span><span><input type="button" value="+" onclick="addAUTHOR()"></input></span></p>
                </fieldset>                
                
                <fieldset>
                <legend> Revista </legend>
                <p><span class="text-left"><label for="titlejournal">Título da Revista </label></span><span class="text-left">
                    <select name="titlejournal" id="titlejournal">
                    </select>
                   </span>
                </p>
                
                <p><span class="text-left"><label for="journalissue">Edição da Revista </label></span><span class="text-left">
                    <select name="journalissue" id="journalissue">
                    </select>
                   </span>
                </p>
                
                <p><span class="text-left"><label for="journalissue"> Volume </label></span><span class="text-left">
                    <select name="journalvolume" id="journalvolume">
                    </select>
                   </span>
                </p>
                </fieldset>     
                <input type="hidden" id="listaKW">
                <input type="hidden" id="listaAuthor">
                <!--<p><span class="text-left" id="desc-erro"></span><span id="erro" class="text-right"></span></p>-->
                <p><input type="submit" id="cadastrar" value="Cadastrar !" class="btn" name="cad"></p>
            
            </fieldset>
        </form>
      </article>
    </section>
    
        <section class="row-fluid">
		<%@ include file="rodape.jsp"%>
                
	</section>
      
      
      
        <script>
          
          $(document).ready(function(){
            document.getElementById("cadastrar").style.visibility="hidden";
             
            $.ajax({
                type: "POST",
                url: "buscaRevista",
                dataType: "html"
             }).done(function(data){
                $('#titlejournal').html(data);
             }); 
             
              $.ajax({
                type: "POST",
                url: "buscaPtype",
                dataType: "html"
             }).done(function(data){
                $('#tipopublicacao').html(data);
             }); 
              
           
            /*monitora a ação de clicar*/
            $('#cadastrar').click(function(){
                if( (($('#errokey').val()) === '') && (($('#erronome').val()) === '') && 
                    (($('#errosobrenome').val()) === '') && (($('#erroid').val()) === '') && 
                    (($('#errotitle').val()) === '') && (($('#errobegin').val()) === '') && (($('#erroend').val()) === '') ){
                    $.ajax({
                      type: "POST",
                      url: "cadastrarArtigo",
                      dataType: "html",
                      data: {articleID: $('#articleid').val(),
                            lastname: $('#middlename').val(),
                            forename: $('#forename').val(),
                            issn: $('#titlejournal').val(),
                            issue: $('#journalissue').val(),
                            volume: $('#journalvolume').val(),
                            title: $('#title').val(),
                            pbeg: $('#pagbegin').val(),
                            pend: $('#pagend').val(),
                            aff: $('#affiliation').val(),
                            ps: $('#publicationstatus').val(),
                            pt: $('#pubtype').val() }
                   });                
                    window.alert('Cadastro efetuado com sucesso!');                     
                }else
                    window.alert('Preencha os campos corretamente');
            });
            
            $('#keyword').focusout(function(){
                var filtro = /^([a-z)(-.0-9 ,]{1,100})$/;

                        if(filtro.exec($('#keyword').val()) === null && $('#keyword').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Descrição:  ');
                            });
                            $('#errokey').fadeIn('slow', function(){
                                $(this).html('Apenas Caracteres Literais minúsculos');
                            });
                            document.getElementById("cadastrar").style.visibility="hidden";
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errokey').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            document.getElementById("cadastrar").style.visibility="visible";
                        }
              });            

            $('#forename').focusout(function(){
                var filtro = /^([A-Za-z ]{1,100})$/;

                        if(filtro.exec($('#forename').val()) === null && $('#forename').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Nome:  ');
                            });
                            $('#erronome').fadeIn('slow', function(){
                                $(this).html('Apenas Letras');
                            });
                             document.getElementById("cadastrar").style.visibility="hidden";                           
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erronome').fadeOut(1000, function(){
                                $(this).html('');
                            });
                             document.getElementById("cadastrar").style.visibility="visible";                           
                        }
              });
              
              $('#middlename').focusout(function(){
                var filtro = /^([A-Za-z ]{1,100})$/;

                        if(filtro.exec($('#middlename').val()) === null && $('#middlename').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Sobrenome:  ');
                            });
                            $('#errosobrenome').fadeIn('slow', function(){
                                $(this).html('Apenas Letras');
                            });
                              document.getElementById("cadastrar").style.visibility="hidden";                           
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errosobrenome').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            document.getElementById("cadastrar").style.visibility="visible";                           
                        }
              });
              
    
            /*O método exec pertence a classe Regex e valida a string passada como parâmetro 
                *para o método, retornando um vetor com as strings ou null quando não encontra nada */
            $('#articleid').focusout(function(){
                var filtro = /^([0-9]{8,8})$/;

                        if(filtro.exec($('#articleid').val()) === null && $('#articleid').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro ID:  ');
                            });
                            $('#erroid').fadeIn('slow', function(){
                                $(this).html('Apenas Números - 8 dígitos');
                            });
                            document.getElementById("cadastrar").style.visibility="hidden";                           
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroid').fadeOut(1000, function(){
                                $(this).html('');
                            });
                              document.getElementById("cadastrar").style.visibility="visible";                           
                        }
              });
              
              
              $('#issue').focusout(function(){
                var filtro = /^([0-9]{1,8})$/;

                        if(filtro.exec($('#issue').val()) === null && $('#issue').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Issue:  ');
                            });
                            $('#erroissueid').fadeIn('slow', function(){
                                $(this).html('Apenas números');
                            });
                              document.getElementById("cadastrar").style.visibility="hidden";                            
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroissueid').fadeOut(1000, function(){
                                $(this).html('');
                            });
                               document.getElementById("cadastrar").style.visibility="visible";                           
                        }
              });
              
              $('#issn').focusout(function(){
                var filtro = /^([0-9]{4,4}\-[0-9]{3,3}[0-9xX]{1,1})$/;

                        if(filtro.exec($('#issn').val()) === null && $('#issn').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro ISSN:  ');
                            });
                            $('#erroissnid').fadeIn('slow', function(){
                                $(this).html('ISSN inválido');
                            });
                              document.getElementById("cadastrar").style.visibility="hidden";                           
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroissnid').fadeOut(1000, function(){
                                $(this).html('');
                            });
                              document.getElementById("cadastrar").style.visibility="visible";                            
                        }
              });
              
              $('#volume').focusout(function(){
                var filtro = /^([0-9]{1,8})$/;

                        if(filtro.exec($('#volume').val()) === null && $('#volume').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Volume:  ');
                            });
                            $('#errovolume').fadeIn('slow', function(){
                                $(this).html('Apenas Números');
                            });
                               document.getElementById("cadastrar").style.visibility="hidden";                           
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errovolume').fadeOut(1000, function(){
                                $(this).html('');
                            });
                               document.getElementById("cadastrar").style.visibility="visible";                           
                        }
              });
              
              $('#affiliation').focusout(function(){
                        var filtro = /^(([A-Za-z\,\ \ç\:\-\;\)\(]{1,80}))$/;

                        if(filtro.exec($('#affiliation').val()) === null && $('#affiliation').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Affiliation:  ');
                            });
                            $('#erroaffiliation').fadeIn('slow', function(){
                                $(this).html('Não Digite caracteres inválidos');
                            });
                              document.getElementById("cadastrar").style.visibility="hidden";                            
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroaffiliation').fadeOut(1000, function(){
                                $(this).html('');
                            });
                              document.getElementById("cadastrar").style.visibility="visible";                            
                        }
              });
              
              
              
              $('#title').focusout(function(){
                var filtro = /^(([A-Za-z,.><0-9)( ]{1,100}))$/;

                        if(filtro.exec($('#title').val()) === null && $('#title').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Título:  ');
                            });
                            $('#errotitle').fadeIn('slow', function(){
                                $(this).html('Não Digite caracteres inválidos');
                            });
                              document.getElementById("cadastrar").style.visibility="hidden";                            
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errotitle').fadeOut(1000, function(){
                                $(this).html('');
                            });
                              document.getElementById("cadastrar").style.visibility="visible";                            
                        }
              });
              
             

              $('#pubtype').focusout(function(){
                var filtro = /^(([A-Za-z,.><]{1,100}))$/;
                        if(filtro.exec($('#pubtype').val()) === null && $('#pubtype').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Tipo de Publicação:  ');
                            });
                            $('#errotipo').fadeIn('slow', function(){
                                $(this).html('Digite Apenas Caracteres Literais');
                            });
                               document.getElementById("cadastrar").style.visibility="hidden";                           
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errotipo').fadeOut(1000, function(){
                                $(this).html('');
                            });
                               document.getElementById("cadastrar").style.visibility="visible";                           
                        }
              });
              
              
              $('#pagbegin').focusout(function(){
                var filtro = /^([0-9]{1,8})$/;
                        if(filtro.exec($('#pagbegin').val()) === null && $('#pagbegin').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Página Inicial:  ');
                            });
                            $('#errobegin').fadeIn('slow', function(){
                                $(this).html('Digite Apenas Números');
                            });
                              document.getElementById("cadastrar").style.visibility="hidden";                            
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#errobegin').fadeOut(1000, function(){
                                $(this).html('');
                            });
                              document.getElementById("cadastrar").style.visibility="visible";                            
                        }
              });
              
              $('#pagend').focusout(function(){
                var filtro = /^([0-9]{1,8})$/;
                        if(filtro.exec($('#pagend').val()) === null && $('#pagend').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Página Final:  ');
                            });
                            $('#erroend').fadeIn('slow', function(){
                                $(this).html('Digite Apenas Números');
                            });
                               document.getElementById("cadastrar").style.visibility="hidden";                           
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erroend').fadeOut(1000, function(){
                                $(this).html('');
                            });
                               document.getElementById("cadastrar").style.visibility="visible";                           
                        }
              });
              
/*
            $('#titlejournal').click()(function(){
             $.ajax({
                type: "POST",
                url: "../buscaRevista",
                dataType: "html"
             }).done(function(data){
                $('#titlejournal').html(data);
             });
           });
*/           
           
            $('#titlejournal').change(function(){
              $.ajax({
                type: "POST",
                url: "buscaEdicao",
                dataType: "html",
                data: {issn: $('#titlejournal').val() }
             }).done(function(data){
                $('#journalissue').html(data);
             });               
            });
            
            $('#journalissue').change(function(){
              $.ajax({
                type: "POST",
                url: "buscaVolume",
                dataType: "html",
                data: {issn: $('#titlejournal').val(), issue: $('#journalissue').val() }
             }).done(function(data){
                $('#journalvolume').html(data);
             });               
            });            

           
      }); //document.ready
      
      </script>
      
            
    </body>
    
</html>
