<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Deletar Termos Mesh</title>
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
        <li>    <a href="index.jsp">Deletar</a> <span class="divider">/</span>  </li>
	<li class="active"> Deletar Termos Mesh </li> 
    </ul>  
    </nav> 
      
    <section class="container-fluid">
      <article class="row-fluid">
        <div class="span4">
        </div>
         <fieldset class="span4">
          <legend>  Exclusão Termos Mesh  </legend>
          
          <form class="form-search" action="excluirMesh" method="GET">                             
                <button type="button" id="apagar" class="btn">Buscar</button> <input type="text" class="input-medium search-query" id="mesh">                              
          </form>
          <form autocomplete="on" class="span4" id="formTable" metho="POST" name="formTable">                                                                               
              <table id="idTabela" class="table">
                  
              </table>
          </form>
      </fieldset>  
          
      </article>
    </section>
      
       
      <script>
          
          $(document).ready(function(){
              
              $('#apagar').click(function(){              
              $.ajax({
                    type: "GET",
                    url: "excluirMesh",
                    dataType: "html",
                    data:{
                        mesh: $("#mesh").val() 
                    }
                    }).done(function(data){                        
                        $("#idTabela").html(data); 
                        
                        $('#idTabela').dataTable({
                                        "sPaginationType": "full_numbers",
					"bPaginate": true,
					"bJQueryUI": false,
					"iDisplayLenght" : 10,
					
					"oLanguage": {
                        "sProcessing":   "Processando...",
                        "sLengthMenu":   "Mostrar _MENU_ registros",
                        "sZeroRecords":  "N&atilde;o foram encontrados resultados",
                	"sInfo":    "Mostrando de _START_ at&eacute; _END_ de _TOTAL_ registros",
                        "sInfoEmpty":    "Mostrando de 0 at&eacute; 0 de 0 registros",
                        "sInfoFiltered": "(filtrado de _MAX_ registros no total)",
                        "sInfoPostFix":  "  ",
                        "sSearch":       "Buscar:",
                        "sUrl":          "",
                        "oPaginate": {
                            "sFirst":    "    Primeiro    ",
                            "sPrevious": "    Anterior    ",
                            "sNext":     "    Seguinte    ",
                            "sLast":     "    &Uacute;ltimo   "
                        }                                                                              
                     }
                 });
                        
                    });
              });  
            
         });
         
         function excluir(id){                 
                $.ajax({
                    type: "POST",
                    url: "excluirMesh",
                    dataType: "html",
                    data:{
                        mesh: id
                    }
                    }).done(function(data){  
                        $("#formTable").html(data);   
                        
                    });
              };                                                                    
      </script>
                <%@ include file="rodape.jsp"%>
      
    </body>
</html>

