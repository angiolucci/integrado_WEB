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
                <li class="active"> Consulta Avan�ada por MeshTerms,Tipo e Subst�ncias Qu�micas </li> 
            </ul>  
        </nav> 

        <section class="container-fluid">
            <article class="row-fluid">
                <div class="span3">
                </div>

                <fieldset class="span8">
                    <legend>  Busca Avan�ada  </legend>

                    <form class="form-search" method="post" id="busca_avancada_3" name="busca_avancada_3" action="buscaAvancada3">                             
                        Ignorar tipo <input type="text" id="tipo" name="tipo" class="input-medium search-query">
                        MeshTerm <input type="text" id="mesh_term" name="mesh_term" class="input-medium search-query">
                        Subst�ncia Quimica <input type="text" id="substancia" name="substancia" class="input-medium search-query">
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


