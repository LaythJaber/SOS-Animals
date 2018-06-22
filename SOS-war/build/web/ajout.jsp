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
               
                <style>
                       .leftcontact {
  width:49.5%; 
  float:left;
  border-right: 1px  ;
  box-sizing: border-box;
  padding: 0px 50px 0px 0px;
}

.rightcontact {
  width:49.5%;
  float:right;
  box-sizing: border-box;
  padding: 0px 0px 0px 50px;
}
                </style>
        <script>
        
            var c1=0; var c2=0;var c3=0;var c4=0; 
$(document).ready(function(){

        
        $("#checkbox1").click(function(){
            if(c1===0)
            {c1=1;
            $("#ch1").css("color", "#7FFFD4");}
            else {c1=0;
            $("#ch1").css("color", "white");}
          });
          
       $("#checkbox2").click(function(){
            if(c2===0)
                {c2=1;
             $("#ch2").css("color", "#7FFFD4");}
             else {c2=0;
             $("#ch2").css("color", "white");}
          });
          
           $("#checkbox3").click(function(){
            if(c3===0)
            {c3=1;
        $("#ch3").css("color", "#7FFFD4");}
    else {c3=0;
        $("#ch3").css("color", "white");}
          });
          
           $("#checkbox4").click(function(){
            if(c4===0)
            {c4=1;
        $("#ch4").css("color", "#7FFFD4");}
    else {c4=0;
        $("#ch4").css("color", "white");}
          });
        
        }
      
);
 
</script>

        </head>
	<body >
         
        
        
        
		<div class="container" id="cont1">

           
                    
			<div class="fs-form-wrap" id="fs-form-wrap">
				<div class="fs-title">
					<h1>AJOUTER UN ANIMAL VISITEUR</h1>
					<div class="codrops-top">
						<a class="codrops-icon codrops-icon-prev" href="http://localhost:8080/Projet_SOS_Animaux-war/welcome.jsp"><span>Home</span></a>
						
					</div>
				</div>
                            <form id="myform" method="GET" action="welcome.jsp" class="fs-form fs-form-full" autocomplete="off">
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
                                               
						
		
                                                <li data-input-trigger>
   <label class="fs-field-label fs-anim-upper">Selectionnez vos services : </label>                
        <div class="leftcontact">
            
             <p id="ch1">
                  <label  for="checkbox1" data-info="la pension vient chercher votre animal et vous le ramène en fin de garde">Transport
                 <input type="checkbox" name="transport" value="transport" style="display:none" id="checkbox1" class="fs-radio-group fs-radio-custom clearfix fs-anim-lower" />
                  </label>
            </p>
            <br>
             <p id="ch2">
                 <label for="checkbox2" data-info="On garantit la bonne santé de votre animal sous le control des meilleurs veteraines">Veterinaire 
                     <input type="checkbox" name="veterinaire" value="veterinaire" style="display:none" id="checkbox2"  />
            
            </label> </p>
            
        </div>
                              
        <div class="rightcontact">
            
           <p id="ch3">
               <label for="checkbox3" data-info="prise en charge de la litière ou de la cage (pour les NAC) par la pension">Entretien 
               <input type="checkbox" name="entretien" value="entretien" id="checkbox3" style="display:none" />
            </label>
            </p>
            <br>
            <p id="ch4">
                <label for="checkbox4" data-info="les pensions vous proposent de toiletter votre animal pendant la garde">Toilettage  
                <input type="checkbox" name="toilettage" value="toilettage" id="checkbox4" style="display:none" /></label>
            
            </p>
        </div>
                              
                                              
                                                
                                            
       </li>
        <li>
            <br><br>
							<label class="fs-field-label fs-anim-upper"  style="display:none">Validation ...</label>
						
                                                        <input class="fs-anim-lower"  type="text" style="display:none" placeholder="Veuillez cliquer sur valider" />
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

				new FForm( formWrap, {
					onReview : function() {
						classie.add( document.body, 'overview' ); // for demo purposes only
					}
				} );
			})();
                                        
   
    
    

		</script>
	</body>
</html>