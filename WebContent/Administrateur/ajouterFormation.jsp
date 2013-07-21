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
					<h1>NOUVELLE FORMATION</h1> <span>Administration de la plateforme...</span>
				</div>

				<div class="maincontent">
				
				
				
	<form action="AjouterFormationServlet" method="POST">
		Nom Formation: <input name="nom" type="text" /><br/>
		Client: <input name="client" type="text" /><br/>
		Debut: <input name="debut" type="text" /><br/>
		Fin: <input name="fin" type="text" /><br/>
		<input type="submit" value="Ajouter">
	</form>
	<br/><br/>
<form action="#" method="post" class="stdform" id="form1" novalidate="novalidate">
                    	<div class="par control-group error">
                        	<label for="firstname" class="control-label">First Name</label>
                            <div class="controls"><input type="text" class="input-large" id="firstname" name="firstname"><label for="firstname" generated="true" class="error">Please enter your first name</label></div>
                        </div>
                        
                        <div class="control-group error">
                        	<label for="lastname" class="control-label">Client</label>
                            <div class="controls">
							<span class="field">
	                            <div class="selector" id="uniform-undefined">
	                            	<span style="-moz-user-select: none;">Choose One</span>
	                            	<select class="uniformselect" name="select" style="opacity: 0;">
		                            	<option value="">Choose One</option>
		                                <option value="">Selection One</option>
		                                <option value="">Selection Two</option>
		                                <option value="">Selection Three</option>
	                                <option value="">Selection Four</option>
	                            	</select>
	                            </div>
                            </span>
                            	<label for="lastname" generated="true" class="error">Please enter your last name</label>
                            </div>
                        </div>
                        
                        <div class="par control-group error">
                        	<label for="email" class="control-label">Email</label>
                            <div class="controls"><input type="text" class="input-xlarge" id="email" name="email"><label for="email" generated="true" class="error">Please enter a valid email address</label></div>
                        </div>
                        
                        <div class="par control-group error">
                        	<label for="location" class="control-label">Location</label>
                            <div class="controls"><textarea id="location" class="input-xxlarge" name="location" rows="5" cols="80"></textarea><label for="location" generated="true" class="error">Please enter your location</label></div> 
                        </div>
                                                
                        <p class="stdformbutton">
                        	<button class="btn btn-primary">Submit Button</button>
                        </p>
                    </form>	



				</div>
			</div>	
			<jsp:include page="../assets/layout/common/footer.jsp"></jsp:include>