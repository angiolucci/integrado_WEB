<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Register Article</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src = "jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="img/favicon.png">
    <link rel="stylesheet" href="css/bootstrap-responsive.css" type="text/css"/>
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">


  
        <script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
      
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
        <li>    <a href="registerArticle.html">Cadastro Artigos</a> <span class="divider">/</span>  </li>
	<li class="active"> Artigos</li> 
    </ul>  
    </nav>
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
            <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro Substâncias Químicas
                </legend>
                <p><span class="text-left"><label for="nameofsubstance">Nome da Substância</label></span><span><input type="text" id="nameofsubstance"></span></p>
                <p><span class="text-center"></span><span id="desc-erro"></span><span id="erro"></span></p>
            
            </fieldset>
            </form>
        </div>
          <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Register Article
                </legend>
                <p><span class="text-left"><label for="articleid">Article ID</label></span><span><input type="text" id="articleid" name="articleid"></span></p>
                <p><span class="text-left"><label for="issue">Issue</label></span><span><input type="text" id="issue" name="issue"></span></p>
                <p><span class="text-left"><label for="issn">ISSN</label></span><span><input type="text" id="issn" name="issn"></span></p>
                <p><span class="text-left"><label for="volume">Volume</label></span><span><input type="text" id="volume" name="volume"></span></p>
                <p><span class="text-left"><label for="affiliation">Affiliation</label></span><span><input type="text" id="affiliation" name="affiliation"></span></p>
                <p><span class="text-left"><label for="pubtype">Tipo de Publicação</label></span><span><input type="text" id="pubtype" name="pubtype"></span></p>
                <p><span class="text-left"><label for="publicationstatus">Publication Status</label></span><span class="text-left">
                    <select name="publicationstatus" id="publicationstatus">
                        <option value="" selected></option>
                        <option value="aheadofprint">aheadofprint</option>
                        <option value="epublish">epublish</option>                
                        <option value="ppublish">ppublish</option>
                    </select>
                   </span>
                </p>
                <p><span class="text-left"><label for="title">Title</label></span><span><input type="text" id="title" name="title"></span></p>
                <p><span class="text-left"><label for="pagbegin">Pag. Begin</label></span><span><input type="text" id="pagbegin" name="pagbegin"></span></p>
                <p><span class="text-left"><label for="pagend">Pag. End</label></span><span><input type="text" id="pagend" name="pagend"></span></p>
                
                <p><span class="text-left" id="desc-erro"></span><span id="erro" class="text-right"></span></p>
               
            
            </fieldset>
        </form>
        <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro Palavras-Chave
                </legend>
                <p><span class="text-left"><label for="keyword">Palavra-Chave</label></span><span><input type="text" id="keyword"></span></p>
                <p><span class="text-center"></span><span id="desc-erro"></span><span id="erro"></span></p>

            </fieldset>
        </form>  
      </article>
    </section>
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
            <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro de Autores
                </legend>
                <p><span class="text-left"><label for="forename">Nome</label></span><span><input type="text" id="forename"></span></p>
                <p><span class="text-left"><label for="middlename">Sobrenome</label></span><span><input type="text" id="middlename"></span></p>
                <p><span class="text-left"><label for="lastname">Último Nome</label></span><span><input type="text" id="lastname"></span></p>
                <p><span class="text-left"><label for="initials">Iniciais</label></span><span><input type="text" id="initials"></span></p>
                <p><span class="text-center"></span><span id="desc-erro"></span><span id="erro"></span></p>
            </fieldset>
            </form>
        </div>
          <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro Revista
                </legend>
                <p><span class="text-left"><label for="issn">ISSN</label></span><span><input type="text" id="issn"></span></p>
                <p><span class="text-left"><label for="isoabreviation">ISO Abreviação</label></span><span><input type="text" id="isoabreviation"></span></p>
                <p><span class="text-left"><label for="title">Título</label></span><span><input type="text" id="title"></span></p>
                <p><span class="text-center"></span><span id="desc-erro"></span><span id="erro"></span></p>
            </fieldset>
        </form>
        <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro Edição da Revista
                </legend>
                <p><span class="text-left"><label for="issue">ISSUE</label></span><span><input type="text" id="issue"></span></p>
                <p><span class="text-left"><label for="volume">Volume</label></span><span><input type="text" id="volume"></span></p>
                <p><span class="text-left"><label for="issn">ISSN</label></span><span><input type="text" id="issn"></span></p>
                <p><span class="text-left"><label for="pubdate">Data de Publicação</label></span><span><input type="date" id="pubdate"></span></p>
                <p><span class="text-left"><label for="citedmedium">Cited Medium</label></span><span><input type="text" id="citedmedium"></span></p>
                <p><span class="text-center"></span><span id="desc-erro"></span><span id="erro"></span></p>
            </fieldset>
        </form>  
      </article>
    </section>  
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
            <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro Mesh Termos
                </legend>
                <p><span class="text-left"><label for="description">Descrição</label></span><span><input type="text" id="description"></span></p>
                <p><span class="text-center"></span><span id="desc-erro"></span><span id="erro"></span></p>
            </fieldset>
        </form>
        </div>
          <form autocomplete="on" class="span4">
            <fieldset>
                <legend>
                    Cadastro Tipo de Publicação
                </legend>
                <p><span class="text-left"><label for="pubtype">Tipo de Publicação</label></span><span><input type="text" id="pubtype"></span></p>
                <p><span class="text-center"></span><span id="desc-erro"></span><span id="erro"></span></p>
                <p><input type="submit" id="cadastrar" value="Cadastrar !" class="btn"></p>
            </fieldset>
        </form>
          
      </article>
    </section>  
    
        <section class="row-fluid">
		<footer class="span12">
                        <br>
                        <address> 
                            <strong>PubMed, Ltda.</strong><br> 
                            Avenida Gen. Carneiro, 795<br> 
                            Sorocaba, SP 18043-000<br> 
                            <abbr title="Phone">Fone:</abbr> 
                            (19) 9309-5397
                        </address>
		</footer>
                
	</section>
      
      
      
        <script>
          
          $(document).ready(function(){
              
            /*monitora a ação de clicar*/
            $('#cadastrar').click(function(){
                window.alert('Cadastro efetuado com sucesso!');
            });

    
            /*O método exec pertence a classe Regex e valida a string passada como parâmetro 
                *para o método, retornando um vetor com as strings ou null quando não encontra nada */
            $('#articleid').focusout(function(){
                var filtro = /^([0-9]{8,8})$/;

                        if(filtro.exec($('#articleid').val()) === null && $('#articleid').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro ID:  ');
                            });
                            $('#erro').fadeIn('slow', function(){
                                $(this).html('Apenas Números - 8 dígitos');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              
              $('#issue').focusout(function(){
                var filtro = /^([0-9]{1,8})$/;

                        if(filtro.exec($('#issue').val()) === null && $('#issue').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Issue:  ');
                            });
                            $('#erro').fadeIn('slow', function(){
                                $(this).html('Apenas números');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#issn').focusout(function(){
                var filtro = /^([0-9]{4,4}\-[0-9]{3,3}[0-9xX]{1,1})$/;

                        if(filtro.exec($('#issn').val()) === null && $('#issn').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro ISSN:  ');
                            });
                            $('#erro').fadeIn('slow', function(){
                                $(this).html('ISSN inválido');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#volume').focusout(function(){
                var filtro = /^([0-9]{1,8})$/;

                        if(filtro.exec($('#volume').val()) === null && $('#volume').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Volume:  ');
                            });
                            $('#erro').fadeIn('slow', function(){
                                $(this).html('Apenas Números');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#affiliation').focusout(function(){
                var filtro = /^(([A-Za-z]{1,80}[,]{1,1})+([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4}))$/;

                        if(filtro.exec($('#affiliation').val()) === null && $('#affiliation').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Affiliation:  ');
                            });
                            $('#erro').fadeIn('slow', function(){
                                $(this).html('Não Digite caracteres inválidos');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              
              
              $('#title').focusout(function(){
                var filtro = /^(([A-Za-z,.><]{1,100}))$/;

                        if(filtro.exec($('#title').val()) === null && $('#title').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Título:  ');
                            });
                            $('#erro').fadeIn('slow', function(){
                                $(this).html('Não Digite caracteres inválidos');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#title').focusout(function(){
                var filtro = /^(([A-Za-z,.><]{1,100}))$/;

                        if(filtro.exec($('#title').val()) === null && $('#title').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Título:  ');
                            });
                            $('#erro').fadeIn('slow', function(){
                                $(this).html('Não Digite caracteres inválidos');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });

              $('#pubtype').focusout(function(){
                var filtro = /^(([A-Za-z,.><]{1,100}))$/;
                        if(filtro.exec($('#pubtype').val()) === null && $('#pubtype').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Tipo de Publicação:  ');
                            });
                            $('#erro').fadeIn('slow', function(){
                                $(this).html('Digite Apenas Caracteres Literais');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              
              $('#pagbegin').focusout(function(){
                var filtro = /^([0-9]{1,8})$/;
                        if(filtro.exec($('#pagbegin').val()) === null && $('#pagbegin').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Página Inicial:  ');
                            });
                            $('#erro').fadeIn('slow', function(){
                                $(this).html('Digite Apenas Números');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
              $('#pagend').focusout(function(){
                var filtro = /^([0-9]{1,8})$/;
                        if(filtro.exec($('#pagend').val()) === null && $('#pagend').val()){
                            $('#desc-erro').fadeIn(1000, function(){
                                $(this).html('Erro Página Final:  ');
                            });
                            $('#erro').fadeIn('slow', function(){
                                $(this).html('Digite Apenas Números');
                            });
                        }else{
                            $('#desc-erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                            $('#erro').fadeOut(1000, function(){
                                $(this).html('');
                            });
                        }
              });
              
          });
      
      </script>
      
            
    </body>
</html>

