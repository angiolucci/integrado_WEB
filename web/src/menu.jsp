
<%@page import="model.SystemUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! static HttpSession menuSession; 
    static SystemUser menuUser;
    static int userType;
%>
<!DOCTYPE html>
<%
    menuSession = request.getSession(false);
    String userLogin = "NOT_LOGGED";
    userType = 0;
    
    if(menuSession != null){
        menuUser = (SystemUser)menuSession.getAttribute("user");
        if(menuUser != null){
            userLogin = menuUser.getLogin();
            userType = menuUser.getType();
        }
    }
%>
<nav class="navbar-inner"> 
 <div class="container-fluid">
     <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a class="brand">PubMed</a>
     <nav class="nav-collapse collapse navbar-responsive-collapse">
        <ul class="nav">
                 <% if( userType >= 50){ %>
                <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Meus Artigos <strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                         <li>    <a href="registerArticle.jsp">Incuir</a> </li>
                         <li>    <a href="alterArticle.jsp">Alterar</a>   </li>
                         <li>    <a href="searchArticle.jsp">Remover</a>   </li>
                         <li>    <a href="deleteRegisterArticle.jsp">Consultar</a>   </li>                                   
                     </ul>
                 </li>
            <% } %>
				 
				
                <% if( (userType == 25) || (userType == 99)){ %>
               <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Termos Mesh <strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                         <li>    <a href="meshHeading.jsp">Incuir</a> </li>
                         <li>    <a href="alterMeshHeading.jsp">Alterar</a>   </li>
                         <li>    <a href="deleteMeshHeading.jsp">Remover</a>   </li>
                         <li>    <a href="searchMeshHeading.jsp">Consultar</a>   </li>                                   
                     </ul>
                 </li>
								 
                 <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Publicações <strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                         <li>    <a href="journal.jsp">Incuir Publicação</a> </li>
						 <li>    <a href="alterJournal.jsp">Alterar Publicação </a> </li>
						 <li>    <a href="searchJournal.jsp">Consultar Publicação</a>   </li>
						 <li>    <a href="deleteJournal.jsp">Remover Publicação</a>   </li>						 
                         <li>    <a href="journalIssue.jsp">Incluir Edição </a> </li>
						 <li>    <a href="alterjournalIssue.jsp">Alterar Edição</a>   </li>
                         <li>    <a href="searchJournalIssue.jsp">Consultar Edição</a>   </li>
                         <li>    <a href="deleteJournalIssue.jsp">Remover Edição</a>   </li>                        
                     </ul>
                 </li>	
                <% } %>
             <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Buscas avançadas <strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                         <li>    <a href="advancedSearch1.jsp">Busca por MeshTerms e Substâncias Químicas</a> </li>
                        <li>    <a href="advancedSearch2.jsp">Busca avançada por MeshTerms</a> </li>
                        <li>    <a href="advancedSearch3.jsp">MeshTerms, exclusão de tipo e Subs. Químicas</a> </li>
                        <li>    <a href="advancedSearch4.jsp">Consulta Avançada por Quantidade de MeshTerms</a> </li>
                     </ul>
                 </li>	
              </ul>
             <ul class="nav pull-right">

                 <% if(userLogin.equals("NOT_LOGGED")){ %>

                 <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#">Log In <strong class="caret"></strong></a>
                 <ul class="dropdown-menu" >
                     <li>    <a href="logIn.jsp"> Entrar </a>    </li>
                     <li>    <a href="cadastrarUsuario.jsp"> Crie uma conta</a>    </li>                                   
                 </ul>
                 </li>

                 <% }else { %>
                 <li class="dropdown">
                     <a data-toggle="dropdown" class="dropdown-toggle" href="#"><%= userLogin %> <strong class="caret"></strong></a>
                     <ul class="dropdown-menu">
                         <li>    <a href="settings.jsp">Configurações</a>  </li>
                         <li>    <a href="ajuda.jsp">Ajuda</a>  </li>
                         <li class="divider">    </li>                                    
                         <li>    <a href="logout.jsp">Log Out</a>  </li>
                     </ul>
                 </li>
                 <% } %>
             </ul>
      </nav>
 </div>
</nav>