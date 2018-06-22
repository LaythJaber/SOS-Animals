<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Fullscreen Form Interface</title>
		<meta name="description" content="Fullscreen Form Interface: A distraction-free form concept with fancy animations" />
		<meta name="keywords" content="fullscreen form, css animations, distraction-free, web design" />
		<meta name="author" content="Codrops" />
		<script src="js/jquery.js"></script>
                <link rel="shortcut icon" href="FullscreenForm//favicon.ico">
		<link rel="stylesheet" type="text/css" href="FullscreenForm/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="FullscreenForm/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="FullscreenForm/css/component.css" />
		<link rel="stylesheet" type="text/css" href="FullscreenForm/css/cs-select.css" />
		<link rel="stylesheet" type="text/css" href="FullscreenForm/css/cs-skin-boxes.css" />
		<script src="FullscreenForm/js/modernizr.custom.js"></script>
               
                

        </head>
	<body >
        
          
    <div class="container" id="cont1">

           
                    
			<div class="fs-form-wrap" id="fs-form-wrap">
				<div class="fs-title">
					<h1>AJOUTER UN ANIMAL PERDU</h1>
					<div class="codrops-top">
						<a class="codrops-icon codrops-icon-prev" href="http://localhost:8080/Projet_SOS_Animaux-war/welcome.jsp"><span>Home</span></a>
						
					</div>
				</div>
                             <form  id="myform" method="GET" action="welcome.jsp" class="fs-form fs-form-full" autocomplete="off">
					<ol class="fs-fields">
						<li>
							<label class="fs-field-label fs-anim-upper" >SPECIES :</label>
                                                        <select class="cs-select cs-skin-boxes fs-anim-lower" name="espece" id="q1">
                                                            <option value="crustaces">Crustacés</option>
                                                            <option value="mollusques">Mollusques</option>
                                                            <option value="vers">Vers</option>
                                                            <option value="poissons">Poissons</option>
                                                            <option value="insectes">Insectes</option>
                                                            <option value="batraciens et reptiles">Batraciens et reptiles</option>
                                                            <option value="mammiferes">Mammifères </option>
                                                        </select>
                                                            
						</li>
                                                
                                                
                                                
                                                <li>
							<label class="fs-field-label fs-anim-upper" >TYPE :</label>
							<select class="cs-select cs-skin-boxes fs-anim-lower" name="type" id="q2">
                                                            <option value="chien">Chien</option>
                                                            <option value="chat">Chat</option>
                                                            <option value="poisson">Poisson</option>
                                                            <option value="oiseaux">Oiseaux</option>
                                                            <option value="phoque">phoque</option>
                                                            <option value="ours">Ours</option>
                                                            <option value="albatroce">Albatroce </option>
                                                        </select>
                                                            
						</li>
                                                
                                                <li>
							<label class="fs-field-label fs-anim-upper"  >SIZE :</label>
							<select class="cs-select cs-skin-boxes fs-anim-lower" name="taille" id="q3">
                                                            <option value="petit">Petit</option>
                                                            <option value="moyen">Moyen</option>
                                                            <option value="grand">Grand</option>
                                                            <option value="geant">Geant</option>
  
                                                        </select>
                                                            
						</li>
                                                
                   	 	    </select>
                                                <li data-input-trigger>
							<label class="fs-field-label fs-anim-upper" >STATE :</label>
							<select class="cs-select cs-skin-boxes fs-anim-lower" name="etat" id="q4">
								
								<option  value="grave" data-class="color-e8a19b">Grave</option>
								<option value="normal" data-class="color-f7cda9">Normal</option>
								<option value="bon" data-class="color-bdd1c8">Bon</option>
								<option value="excellent" data-class="color-e1e7cd">Excellent</option>

							</select>
						</li>
                                                
                                                <li data-input-trigger>
							<label class="fs-field-label fs-anim-upper" >REGION :</label>
							<select class="cs-select cs-skin-boxes fs-anim-lower" name="region" id="q5">
								
								<option value="chaude" data-class="color-e8a19b">Chaude</option>
								
								<option value="froide" data-class="color-bdd1c8">Froide</option>
								

							</select>
						</li>
                                                
                                                 <li data-input-trigger>
							<label class="fs-field-label fs-anim-upper" >AGE :</label>
							<select class="cs-select cs-skin-boxes fs-anim-lower" name="age" id="q6">
								
								<option value="nouveau nee" >Nouveau Née</option>
								<option value="moyen age">Moyen age</option>
								<option value="agee">Agée</option>
								

							</select>
						</li>
						
					</ol><!-- /fs-fields -->
                                        <br>
                                        
					<button class="fs-submit" type="submit">ADD Animal</button>
				</form><!-- /fs-form -->
			</div><!-- /fs-form-wrap -->

			
			

		</div><!-- /container -->
                
                
                
               
	
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
		<script src="FullscreenForm/js/classie.js"></script>
		<script src="FullscreenForm/js/selectFx.js"></script>
		<script src="FullscreenForm/js/fullscreenForm.js"></script>
		<script>
			(function() {
				var formWrap = document.getElementById( 'fs-form-wrap' );

				[].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {	
					new SelectFx( el, {
						stickyPlaceholder: false,
						onChange: function(val){
							document.querySelector('span.cs-placeholder').style.backgroundColor = val;
						}
					});
				} );

				
			});
                                        
   
    
    

		</script>
	</body>
</html>

