<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Consultar Artigo</title>
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
                <li>    <a href="index.jsp">P�gina Inicial</a> <span class="divider">/</span> </li>
                <li>    <a href="$">Consultar</a> <span class="divider">/</span>  </li>
                <li class="active"> Consulta Avan�ada por Quantidade de MeshTerms </li> 
            </ul>  
        </nav> 

        <section class="container-fluid">
            <article class="row-fluid">
                <div class="span4">
                </div>

                <fieldset class="span8">
                    <legend>  Busca Avan�ada pela Quantidade </legend>

                    <form class="form-search" method="post" id="busca_avancada_4" name="busca_avancada_4" action="buscaAvancada4">                             
                        Quantidade de Mesh Terms <input type="text" id="qtde" name="qtde" class="input-medium search-query">
                        <button type="submit" class="btn">Buscar</button> 
                    </form>
                    
                </fieldset>
            </article>

        </section>


        <script>
          
        </script>
        <%@ include file="rodape.jsp"%>

    </body>
</html>


