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
                <li>    <a href="index.jsp">Página Inicial</a> <span class="divider">/</span> </li>
                <li>    <a href="index.jsp">Usuário - Cadastrar Usuário</a> <span class="divider">/</span>  </li>
                <li class="active"> Cadastrar Usuário</li> 
            </ul>    
        </nav>  


        <section class="container-fluid">
            <article class="row-fluid">
                <div class="span4">
                </div>
                <form autocomplete="on" class="span4" id="myform" action="efetuarCadastro" method="post">
                    <p><span class="text-left"><label for="username">Nome de usuario <span id="errousername" class="text-error"></span></label></span><span class="text-left"><input type="text" id="username" name="username"></span></p>
                    <p><span class="text-left"><label for="email">E-mail <span id="erroemail" class="text-error"></span></label></span><span class="text-left"><input type="email" id="email" name="email"></span></p>
                    <p><span class="text-left"><label for="pwd">Senha <span id="errosenha" class="text-error"></span></label></span><span class="text-left"><input type="password" id="pwd" name="pwd"></span></p>
                    <p><span class="text-left"><label for="conf-pwd">Confirmar senha <span id="erroconf-pwd" class="text-error"></span></label></span><span class="text-left"><input type="password" id="conf-pwd" name="password"></span></p>
                    <!--
                              <p><span class="text-left"><label for="dt-nto">Data de nascimento <span id="errodt-nto" class="text-error"></span></label></span><span class="text-left"><input type="date" id="dt-nto" name ="date"></span></p>
                              <p><span class="text-left"><label for="masc">Sexo</label></span><span class="text-left">
                                <input type="radio" name="sexo" id="masc" checked><label for="masc">M </label>
                                <input type="radio" name="sexo" id="fem"><label for="fem">F</label></span></p>
                         
                                <p><span class="text-left"><label for="endereco">Endereço <span id="erroend" class="text-error"></span></label></span><span class="text-left"><input type="text" id="endereco" name="endereco"></span></p>
                              <p><span class="text-left"><label for="estado">Estado</label></span><span class="text-left">
                              
                                   <select name="estado" id="estado" class="text-left"> 
                                        <option value="" selected></option>
                                        <option value="AC">AC</option>
                                        <option value="AL">AL</option>
                                        <option value="AM">AM</option>
                                        <option value="AP">AP</option>
                                        <option value="BA">BA</option>
                                        <option value="CE">CE</option>
                                        <option value="DF">DF</option>
                                        <option value="ES">ES</option>
                                        <option value="GO">GO</option>
                                        <option value="MA">MA</option>
                                        <option value="MT">MT</option>
                                        <option value="MS">MS</option>
                                        <option value="MG">MG</option>
                                        <option value="PR">PR</option>
                                        <option value="PB">PB</option>
                                        <option value="PA">PA</option>
                                        <option value="PE">PE</option>
                                        <option value="PI">PI</option>
                                        <option value="RJ">RJ</option>
                                        <option value="RN">RN</option>
                                        <option value="RS">RS</option>
                                        <option value="RO">RO</option>
                                        <option value="RR">RR</option>
                                        <option value="SP">SP</option>
                                        <option value="SE">SE</option>
                                        <option value="SC">SC</option>               
                                        <option value="TO">TO</option>
                                                                                
                                    </select> 
                                 </span>
                              </p>
                              <p><span class="text-left"><label for="telefone">Telefone <span id="errotel" class="text-error"></span></label></span><span class="text-left"><input type="tel" id="telefone" name="telefone"></span></p>
                    <!--<p><span id="desc-erro" class="rotulo"></span><span id="erro" class="campo"></span></p>-->

                    <p><input class="btn" type="submit" id="cadastrar" value="Cadastrar!" name="cadastrar"></p>
                </form>
            </article>
        </section>

        <section class="row-fluid">
            <%@ include file="rodape.jsp"%>
        </section>      
        <script>

            $(document).ready(function() {

                /*monitora a ação de clicar*/
                $('#cadastrar').click(function() {
                    var senha1 = trim($('#pwd').val());
                    var senha2 = trim($('#conf-pwd').val());
                    var email = trim($('#'));

                    if (senha1 != senha2) {
                        window.alert('Senhas não conferem');
                    } else {
                        if (senha1 == '')
                            window.alert('Você deve informar uma senha');
                        else {
                            $('#myform').submit();
                            window.alert('Cadastro efetuado com sucesso!');
                        }
                    }
                });


                $('#nameofsubstance').focusout(function() {
                    var filtro = /^([a-z.)(0-9  ]{1,100})$/;

                    if (filtro.exec($('#nameofsubstance').val()) === null && $('#nameofsubstance').val()) {
                        $('#desc-erro').fadeIn(1000, function() {
                            $(this).html('      ');
                        });
                        $('#erroname').fadeIn('slow', function() {
                            $(this).html('Apenas Caracteres Literais');
                        });
                    } else {
                        $('#desc-erro').fadeOut(1000, function() {
                            $(this).html('');
                        });
                        $('#erroname').fadeOut(1000, function() {
                            $(this).html('');
                        });
                    }
                });

                $('#conf-pwd').focusout(function() {
                    if (pwd.value === conf - pwd.value) {
                        $('#erroconf-pwd').fadeIn('slow', function() {
                            $(this).html('');
                        });
                    } else {
                        $('#erroconf-pwd').fadeOut(1000, function() {
                            $(this).html('Senhas não conferem');
                        });
                    }
                });


                $('#username').focusout(function() {
                    var filtro = /^([a-z0-9\_\-\.]{1,99})+$/;

                    /*O método exec pertence a classe Regex e valida a string passada como parâmetro 
                     *para o método, retornando um vetor com as strings ou null quando não encontra nada */
                    if (filtro.exec($('#username').val()) === null && $('#username').val()) {
                        $('#desc-erro').fadeIn(1000, function() {
                            $(this).html('Erro e-mail:');
                        });
                        $('#errousername').fadeIn('slow', function() {
                            $(this).html('Não use caracteres especiais.');
                        });
                    } else {
                        $('#desc-erro').fadeOut(1000, function() {
                            $(this).html('');
                        });
                        $('#errousername').fadeOut(1000, function() {
                            $(this).html('');
                        });
                    }
                });

                $('#telefone').focusout(function() {

                    var reg_exp = /^\(([0-9]{2,2})\)([ -9]?)([0-9]{4,4})([- ]?)([0-9]{4,4})$/;

                    if (reg_exp.exec($('#telefone').val()) === null && $('#telefone').val()) {
                        $('#desc-erro').fadeIn(1000, function() {
                            $(this).html('Erro Telefone:');
                        });
                        $('#errotel').fadeIn('slow', function() {
                            $(this).html('informe um telefone válido.');
                        });
                    } else {
                        $('#desc-erro').fadeOut(1000, function() {
                            $(this).html('');
                        });
                        $('#errotel').fadeOut(1000, function() {
                            $(this).html('');
                        });
                    }
                });

                $('#email').focusout(function() {
                    var filtro = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

                    /*O método exec pertence a classe Regex e valida a string passada como parâmetro 
                     *para o método, retornando um vetor com as strings ou null quando não encontra nada */
                    if (filtro.exec($('#email').val()) === null && $('#email').val()) {
                        $('#desc-erro').fadeIn(1000, function() {
                            $(this).html('Erro e-mail:');
                        });
                        $('#erroemail').fadeIn('slow', function() {
                            $(this).html('informe e-mail válido.');
                        });
                    } else {
                        $('#desc-erro').fadeOut(1000, function() {
                            $(this).html('');
                        });
                        $('#erroemail').fadeOut(1000, function() {
                            $(this).html('');
                        });
                    }
                });



            });

        </script>

    </body>
</html>
