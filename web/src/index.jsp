<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Desenvolvimento Web - PubMed</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">


	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="img/favicon.png">
  
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
</head>

<body class="container-fluid">
    <section class="row-fluid" id="span12">
        <header class="navbar">
            <nav class="navbar-inner"> 
            <div class="container-fluid">
                <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a class="brand">PubMed</a>
		<nav class="nav-collapse collapse navbar-responsive-collapse">
                        <ul class="nav">
                            <li class="active"> <a href="index.html">Página Inicial</a>    </li>
                            
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">Cadastro <strong class="caret"></strong></a>
                                <ul class="dropdown-menu">
                                    <li>    <a href="registerArticle.jsp">Artigo Pub Med</a> </li>
                                    <li>    <a href="journal.html">Revista</a>   </li>
                                    <li>    <a href="journaIIssue.html">Edição da Revista</a>   </li>
                                    <li>    <a href="meshHeading.html">Termos Mesh</a>   </li>
                                    <li>    <a href="pubType.html">Tipo de Publicação</a>  </li>
                                </ul>
                            </li>
                            
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">Alterar <strong class="caret"></strong></a>
                                <ul class="dropdown-menu">
                                    <li>    <a href="alterArticle.html">Artigo Pub Med</a> </li>
                                    <li>    <a href="alterJournal.html">Revista</a>   </li>
                                    <li>    <a href="alterjournalIssue.html">Edição da Revista</a>   </li>
                                    <li>    <a href="alterMeshHeading.html">Termos Mesh</a>   </li>                                   
                                </ul>
                            </li>
                            
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">Consultar <strong class="caret"></strong></a>
                                <ul class="dropdown-menu">
                                    <li>    <a href="searchArticle.html">Artigo Pub Med</a> </li>
                                    <li>    <a href="searchJournal.html">Revista</a>   </li>
                                    <li>    <a href="searchJournalIssue.html">Edição da Revista</a>   </li>
                                    <li>    <a href="searchMeshHeading.html">Termos Mesh</a>   </li>                                   
                                    <li>    <a href="searchChemicals.html">Substâncias Químicas</a>   </li>
                                    
                                </ul>
                            </li>
                            
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">Excluir <strong class="caret"></strong></a>
                                <ul class="dropdown-menu">
                                    <li>    <a href="deleteRegisterArticle.html">Artigo Pub Med</a> </li>
                                    <li>    <a href="deleteJournal.html">Revista</a>   </li>
                                    <li>    <a href="deleteJournalIssue.html">Edição da Revista</a>   </li>
                                    <li>    <a href="deleteMeshHeading.html">Termos Mesh</a>   </li>                                   
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
                                    <li>    <a href="settings.html">Configurações</a>  </li>
                                    <li>    <a href="ajuda.html">Ajuda</a>  </li>
                                    <li class="divider">    </li>                                    
                                    <li>    <a href="#">Log Out</a>  </li>
				</ul>
                            </li>
			</ul>
                 </nav>
            </div>
         </nav>
      </header>
                    
			<div class="carousel slide" id="carousel-666326">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-666326">    </li>
					<li data-slide-to="1" data-target="#carousel-666326">   </li>
					<li data-slide-to="2" data-target="#carousel-666326">   </li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="img/ima2.jpg">
						<div class="carousel-caption">
							<h4>    PubMed  </h4>
							<p> PubMed comprises over 22 million citations for biomedical literature from MEDLINE, life science journals, and online books.     </p>
						</div>
					</div>
					<div class="item">
                                            <img alt="" src="img/ima1.jpg">
						<div class="carousel-caption">
							<h4>    PubMed and NCBI </h4>
							<p> PubMed also provides access to additional relevant web sites and links to the other NCBI molecular biology resources.   </p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="img/ima3.jpg">
						<div class="carousel-caption">
							<h4>    Citations and Abstracts </h4>
							<p> PubMed citations and abstracts include the fields of biomedicine and health, covering portions of the life sciences, behavioral sciences, chemical sciences, and bioengineering.    </p>
						</div>
					</div>
				</div> 
                            <a data-slide="prev" href="#carousel-666326" class="left carousel-control"></a> <a data-slide="next" href="#carousel-666326" class="right carousel-control"></a>
			</div>                                                                                
    </section>
    <ul class="breadcrumb">        				
        <li class="active"> Página Inicial </li> 
    </ul>
    
	<section class="row-fluid">
		<nav class="span3">
			<ul class="nav nav-list">
				<li class="nav-header"> Acesso Rápido </li>
                                <li class="active"> <a href="index.html">Página Inicial</a>    </li>
                                <li>    <a href="registerArticle.html">Cadastro de Artigos</a> </li>
				<li>    <a href="search.html">Consultas</a>    </li>
				<li class="nav-header"> Outras Opções </li>
				<li>    <a href="profile.html">Visualizar Perfil</a> </li>
				<li>    <a href="settings.html">Configurações </a>    </li>
				<li class="divider">    </li>
				<li>    <a href="ajuda.html">Ajuda</a>    </li>
			</ul>
		</nav>
		<article class="span8">
			<form class="form-search">                             
				<input type="text" class="input-medium search-query"> <button type="submit" class="btn">Busca Rápida por Artigo</button>
			</form>
                        <article>
                            <p class="text-left">
                                <strong>Practical  aspects of genetic counseling in breast cancer: Lights and shadows.</strong><br>
                                In unselected populations, less than 10% of breast cancers are associated with germline mutations in predisposing genes. Breast cancer type 1 and 2 (BRCA1 and BRCA2) susceptibility genes are the most common involved genes and confer a 10-30 times higher risk of developing the disease compared to the general population. A personal or family history suggestive of inherited breast cancer syndrome may be further evaluated to assess the risk of genetic predisposition and
                                the presence of a genetic mutation. Breast cancer genetic counseling should include a careful risk assessment with associated psychosocial evaluation and support, possible molecular testing, personalized discussion of results. Knowledge of BRCA status can influence individualized cancer risk-reduction strategies. i.e. active surveillance, prophylactic surgery and/or pharmacoprevention.<br><br><br>
                                <strong>On the quantum principles of cognitive learning.</strong><br>
                                Pothos & Busemeyer's (PB's) query about whether quantum probability can provide a foundation for the cognitive modeling embodies so many underlying implications that the subject is far from exhausted. In this brief commentary, however, I suggest that the conceptual thresholds of the meaningful learning give rise to a typical Boltzmann's weighting measure, which indicates a statistical verisimilitude of quantum behavior in the human cognitive ensemble.<br><br><br>
                                <strong>Genetics of coloration in birds.</strong>
                                Establishing the links between phenotype and genotype is of great importance for resolving key questions about the evolution, maintenance and adaptive function of phenotypic variation. Bird coloration is one of the most studied systems to investigate the role of natural and sexual selection in the evolution of phenotypic diversity. Given the recent advances in molecular tools that allow discovering genetic polymorphisms and measuring gene and protein expression levels, it is timely to review the literature on the genetics of bird coloration. The present study shows that melanin-based colour phenotypes are often associated with mutations at 
                                melanogenic genes. Differences in melanin-based coloration are caused by switches of eumelanin to pheomelanin production or by changes in feather keratin structure, melanoblast migration and differentiation, as well as 
                                melanosome structure. Similar associations with other types of colorations are difficult to establish, because our knowledge about the molecular genetics of carotenoid-based and structural coloration is quasi inexistent. This discrepancy stems from the fact that only melanin-based coloration shows pronounced heritability estimates, i.e. the resemblance between related individuals is usually mainly explained by genetic factors. In contrast, the expression of carotenoid-based coloration is phenotypically plastic with a high sensitivity to variation in environmental conditions. It therefore appears that melanin-based colour traits are prime systems to 
                                understand the genetic basis of phenotypic variation. In this context, birds have a great potential to bring us to new frontiers where many exciting discoveries will be made on the genetics of phenotypic traits, such as coloration. In this context, 
                                a major goal of our review is to suggest a number of exciting future avenues.    <br><br><br>
                            </p>
                        </article>
                        <nav class="pagination pagination-small">
				<ul>
					<li>    <a href="#">Prev</a>    </li>
					<li>    <a href="#">1</a>   </li>
					<li>    <a href="#">2</a>   </li>
					<li>    <a href="#">3</a>   </li>
					<li>    <a href="#">4</a>   </li>
					<li>    <a href="#">5</a>   </li>
					<li>    <a href="#">Next</a>    </li>
				</ul>
			</nav>
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
</body>
</html>
