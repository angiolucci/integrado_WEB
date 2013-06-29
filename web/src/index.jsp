<!DOCTYPE html>
<html lang="en">
<head>
  <title>Desenvolvimento Web - PubMed</title>
  <%@include file="chamadaCSS.jsp" %>
</head>

<body class="container-fluid">
    <section class="row-fluid" id="span12">
        <header class="navbar">
            <%@include file="menu.jsp" %>
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
                                <li class="active"> <a href="index.jsp">Página Inicial</a>    </li>
                                <li>    <a href="registerArticle.jsp">Cadastro de Artigos</a> </li>
				<li>    <a href="search.jsp">Consultas</a>    </li>
				<li class="nav-header"> Outras Opções </li>
				<li>    <a href="profile.jsp">Visualizar Perfil</a> </li>
				<li>    <a href="settings.jsp">Configurações </a>    </li>
				<li class="divider">    </li>
				<li>    <a href="ajuda.jsp">Ajuda</a>    </li>
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
        
            <%@ include file="rodape.jsp"%>
</body>
</html>
