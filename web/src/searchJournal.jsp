<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Buscar Revistas</title>
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
                <li>    <a href="index.jsp">Consultar</a> <span class="divider">/</span>  </li>
                <li class="active"> Consultar Revistas </li> 
            </ul>  
        </nav> 

        <section class="container-fluid">
            <article class="row-fluid">
                <div class="span3">
                </div>

                <fieldset class="span8">
                    <legend>  Busca Revistas  </legend>

                    <form class="form-search" method="GET" action="buscaRevista">                             
                        <button type="submit" class="btn">Buscar Revista</button> <input type="text" class="input-medium search-query" name="journal"> 
                    </form>
                    <form autocomplete="on" class="span8" id="myform">
                    </form>
                </fieldset>
            </article>
        </section>
        <%@ include file="rodape.jsp"%>
    </body>
</html>
