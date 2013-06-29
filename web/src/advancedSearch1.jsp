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
                <li>    <a href="index.jsp">Página Inicial</a> <span class="divider">/</span> </li>
                <li>    <a href="$">Consultar</a> <span class="divider">/</span>  </li>
                <li class="active"> Consulta Avançada por MeshTerms e Substâncias Químicas </li> 
            </ul>  
        </nav> 

        <section class="container-fluid">
            <article class="row-fluid">
                <div class="span3">
                </div>

                <fieldset class="span8">
                    <legend>  Busca Avançada  </legend>

                    <form class="form-search" method="post" id="busca_avancada_1" name="busca_avancada_1" action="buscaAvancada1">                             
                        MeshTerm <input type="text" id="mesh_term" name="mesh_term" class="input-medium search-query">
                        Substância Quimica <input type="text" id="substancia" name="substancia" class="input-medium search-query">
                        <button type="submit" class="btn">Buscar</button> 
                    </form>
                    
                    <form autocomplete="on" class="span8" id="myform">
                        <table class="table" >
                            <thead>
                                <tr>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </fieldset>
            </article>

        </section>


        <script>
          
            $(document).ready(function(){
              
            
            });
        </script>
        <%@ include file="rodape.jsp"%>

    </body>
</html>


