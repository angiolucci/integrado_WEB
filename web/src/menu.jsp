
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar-inner"> 
 <div class="container-fluid">
     <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a class="brand">PubMed</a>
     <nav class="nav-collapse collapse navbar-responsive-collapse">
             <ul class="nav">
                 <li class="active"> <a href="index.jsp">Página Inicial</a>    </li>

                 <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Cadastro <strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                         <li>    <a href="registerArticle.jsp">Artigo Pub Med</a> </li>
                         <li>    <a href="journal.jsp">Revista</a>   </li>
                         <li>    <a href="journalIssue.jsp">Edição da Revista</a>   </li>
                         <li>    <a href="meshHeading.jsp">Termos Mesh</a>   </li>
                         <li>    <a href="pubType.jsp">Tipo de Publicação</a>  </li>
                     </ul>
                 </li>

                 <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Alterar <strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                         <li>    <a href="alterArticle.jsp">Artigo Pub Med</a> </li>
                         <li>    <a href="alterJournal.jsp">Revista</a>   </li>
                         <li>    <a href="alterjournalIssue.jsp">Edição da Revista</a>   </li>
                         <li>    <a href="alterMeshHeading.jsp">Termos Mesh</a>   </li>                                   
                     </ul>
                 </li>

                 <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Consultar <strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                         <li>    <a href="searchArticle.jsp">Artigo Pub Med</a> </li>
                         <li>    <a href="searchJournal.jsp">Revista</a>   </li>
                         <li>    <a href="searchJournalIssue.jsp">Edição da Revista</a>   </li>
                         <li>    <a href="searchMeshHeading.jsp">Termos Mesh</a>   </li>                                   
                         <li>    <a href="searchChemicals.jsp">Substâncias Químicas</a>   </li>

                     </ul>
                 </li>

                 <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Excluir <strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                         <li>    <a href="deleteRegisterArticle.jsp">Artigo Pub Med</a> </li>
                         <li>    <a href="deleteJournal.jsp">Revista</a>   </li>
                         <li>    <a href="deleteJournalIssue.jsp">Edição da Revista</a>   </li>
                         <li>    <a href="deleteMeshHeading.jsp">Termos Mesh</a>   </li>                                   
                     </ul>
                 </li>

             </ul>
             <ul class="nav pull-right">

                 <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Log In <strong class="caret"></strong></a>
                 <ul class="dropdown-menu" >
                     <li>    <a href="logIn.jsp"> Entrar </a>    </li>
                     <li>    <a href="cadastrarUsuario.jsp"> Crie uma conta</a>    </li>                                   
                 </ul>
                 <li class="divider-vertical">  </li>
                 <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Usuário <strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                         <li>    <a href="settings.jsp">Configurações</a>  </li>
                         <li>    <a href="ajuda.jsp">Ajuda</a>  </li>
                         <li class="divider">    </li>                                    
                         <li>    <a href="#">Log Out</a>  </li>
                     </ul>
                 </li>
             </ul>
      </nav>
 </div>
</nav>