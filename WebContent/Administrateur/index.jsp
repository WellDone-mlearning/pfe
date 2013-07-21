<%@page import="org.mlearning.dto.contenu.Formation"%>
<%@page import="org.mlearning.dto.users.User"%>
<%@page import="java.util.List"%>

<jsp:include page="../assets/layout/common/header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/administrateur.css" />
	<div class="mainwrapper">
		<jsp:include page="../assets/layout/administrateur/menu.jsp"></jsp:include>
		<div class="rightpanel">
    		<jsp:include page="../assets/layout/common/top.jsp"></jsp:include>
				<div class="breadcrumbwidget">
					<ul class="skins">
						<li><a href="default" class="skin-color default"></a></li>
						<li><a href="orange" class="skin-color orange"></a></li>
						<li><a href="dark" class="skin-color dark"></a></li>
						<li>&nbsp;</li>
						<li class="fixed"><a href="" class="skin-layout fixed"></a></li>
						<li class="wide"><a href="" class="skin-layout wide"></a></li>
					</ul>
					<ul class="breadcrumb">
						<li><a href="./">Accueil</a> <span class="divider">/</span></li>
						<li class="active">Tableau de bord</li>
					</ul>
				</div>
				<div class="pagetitle">
					<h1>TABLEAU DE BORD</h1> <span>Administration de la plateforme...</span>
				</div>

				<div class="maincontent">
					<div id="admin_accueil_listeDesFormation">
						<a href="AjouterFormationServlet" >
							<div id="btn_ajouterFormation">Nouvelle Formation</div>
						</a>
						<link rel="stylesheet" type="text/css" href="assets/composants/roundedList.css" />
						<ol class="rounded-list">				
						<%
							List<Formation> listeDesFormations = (List<Formation>) request.getAttribute("listeDesFormations");
							//FormationBusiness fb = new FormationBusiness();
							
							for (Formation f : listeDesFormations){
								float fProgress = f.getProgress();
						%>
								<li><a href="./DetailsFormationServlet?id=<%= fProgress %>">
									<strong><%= f.getNom() %></strong><br/>
									<%
										if(fProgress == 0){
									%>
											<div class="progress progress-danger progress-striped active">
												<div class="bar" style="width: <%= fProgress %>%"></div>
											</div>
									<%
										}
										else if(fProgress == 100){
									%>
											<div class="progress progress-success">
												<div class="bar" style="width: <%= fProgress %>%"></div>
											</div>
									<%
										}
										else{
									%>
											<div class="progress progress-warning progress-striped">
											    <div class="bar" style="width: <%= fProgress %>%"></div>
											</div>
									<%
										}
									%>
								</a></li>
						<%
							}
						%>
						</ol>
					</div>				
				</div>
			</div>	
			<jsp:include page="../assets/layout/common/footer.jsp"></jsp:include>