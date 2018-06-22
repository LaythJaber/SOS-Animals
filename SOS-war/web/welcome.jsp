<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Grayscale - Start Bootstrap Theme</title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="AAA/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="AAA/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="AAA/css/grayscale.min.css" rel="stylesheet">
    
  
   
      
       
    <script type="text/javascript" src="js/thickbox.js"></script>
<link rel="stylesheet" href="css/thickbox.css" type="text/css" media="screen" />
    
    


    
    <style>
        /* Grow */
.hvr-grow {
    display: inline-block;
    vertical-align: middle;
    transform: translateZ(0);
    box-shadow: 0 0 1px rgba(0, 0, 0, 0);
    backface-visibility: hidden;
    -moz-osx-font-smoothing: grayscale;
    transition-duration: 0.3s;
    transition-property: transform;
}

.hvr-grow:hover,
.hvr-grow:focus,
.hvr-grow:active {
    transform: scale(2.2);
}
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
    
   
  </head>

  <body id="page-top" >

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger">Bienvenue  </a> 
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="navbar-brand  js-scroll-trigger" href="#contact">SE CONNECTER/S'INSCRIRE</a>
            </li>
            
            <li class="nav-item">
              <a class="navbar-brand js-scroll-trigger" href="#contact">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Intro Header -->
    <header class="masthead">
      <div class="intro-body">
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <h1 class="brand-heading">PetFRIEND</h1>
              <p class="intro-text">The place where you can put your beloved pet in a wharmful environement or find the perfect pet for you </p>
              <a href="#about" onclick="recherche()" class="btn btn-circle js-scroll-trigger hvr-grow">
                <i class="glyphicon glyphicon-search"></i>
              </a>

<a href="http://localhost:8080/SOS-war/choix.jsp?keepThis=true&TB_iframe=true&height=150&width=400" title="Ajouter un animal" class="thickbox"><button type="button" class="btn btn-primary btn-circle btn-xl hvr-grow" >
     <i class="glyphicon glyphicon-plus "></i></button></a>
            <button type="button" class="btn btn-primary btn-circle btn-xl hvr-grow" ><i class="glyphicon glyphicon-shopping-cart"></i></button>
<button type="button" class="btn btn-primary btn-circle btn-xl hvr-grow"><i class="glyphicon glyphicon-globe "></i></button>
<button type="button" class="btn btn-primary btn-circle btn-xl hvr-grow"><i class="glyphicon glyphicon-question-sign "></i></button>

            
            
            </div>
          </div>
        </div>
      </div>
    </header>

    
    
    
    
    
    
    
    
    
    
    
    
    <!-- About Section -->
    <section id="about" class="content-section text-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>Entrez les aspects de l'animal cherché</h2>
          </div>
        </div> 
          
              <form class="form-horizontal" action="recherche" method="POST">
	    
	    
   


    	<div class="leftcontact">
            
           
    	
            <div class="form-group">
                 <label class="control-label col-sm-2" for="espece"><h4>Espece</h4></label>
		<div class="col-sm-10">		   
                 <select class="form-control input-lg" id="espece" name="espece">
                                  <option value="crustaces">Crustacés</option>
                                                            <option value="mollusques">Mollusques</option>
                                                            <option value="vers">Vers</option>
                                                            <option value="poissons">Poissons</option>
                                                            <option value="insectes">Insectes</option>
                                                            <option value="batraciens et reptiles">Batraciens et reptiles</option>
                                                            <option value="mammiferes">Mammifères </option>
                                                        </select>
                    </div>
			</div>
    	<div class="form-group">
    <label for="type" class="control-label col-sm-2"><h4>Type</h4></label>
    <div class="col-sm-10">	
    <select class="form-control" name="type" id="type">
                                                           <option value="chien">Chien</option>
                                                            <option value="chat">Chat</option>
                                                            <option value="poisson">Poisson</option>
                                                            <option value="oiseaux">Oiseaux</option>
                                                            <option value="phoque">phoque</option>
                                                            <option value="ours">Ours</option>
                                                            <option value="albatroce">Albatroce </option>
                                                        </select>
    </div></div>
    	 
            
    	
            <div class="form-group ">
                <label for="taille" class="control-label col-sm-2"><h4>Taille</h4></label>
		<div class="col-sm-10">			          
                <select class="form-control" id="taille" name="taille">
                                  <option value="petit">Petit</option>
                                                            <option value="moyen">Moyen</option>
                                                            <option value="grand">Grand</option>
                                                            <option value="geant">Geant</option>
  
                                                        </select>
                </div></div>

			       
                  

			
</div>
	<div class="rightcontact">	
<div class="form-group">
                 <label for="region" class="control-label col-sm-2"><h4>Region</h4></label>
                 <div class="col-sm-10">	
				          <select class="form-control" id="region" name="region">
                                  <option value="chaude" data-class="color-e8a19b">Chaude</option>
								
								<option value="froide" data-class="color-bdd1c8">Froide</option>
								

							</select>
                 </div></div>
    	 

			<div class="form-group">
                            <label for="type" class="control-label col-sm-2" ><h4>Age</h4></label>
    <div class="col-sm-10">
                            <select  class="form-control" name="age" id="age">
								
								<option value="nouveauNee" >Nouveau Née</option>
								<option value="moyenAge">Moyen age</option>
								<option value="agee">Agée</option>
								

							</select>
    </div></div>
 <div class="form-group">
     <label for="etat" class="control-label col-sm-2"><h4>Etat</h4></label>
	<div class="col-sm-10">		        		
     <select class="form-control" id="etat" name="etat">
                                 <option  value="grave" data-class="color-e8a19b">Grave</option>
								<option value="normal" data-class="color-f7cda9">Normal</option>
								<option value="bon" data-class="color-bdd1c8">Bon</option>
								<option value="excellent" data-class="color-e1e7cd">Excellent</option>

							</select>
        </div> </div>

			

			
        </div></div> 
                     <br><br>
                     <ul class="list-inline banner-social-buttons">
                         <li><button type="submit" class="btn btn-default btn-lg">Chercher</button></li>
	
        </form>	
      
    </section>

    <!-- Contact Section -->
    <section id="contact" class="content-section text-center">
      <div class="container">
           <div style="position:absolute; left:200px; top:1250px; ">
         
          <iframe width="950" height="400" scrolling="no" src="http://localhost:8080/SOS-war/register.jsp"></iframe>
           </div>
       
          
              
             
          
      
      </div>
    </section>

    
   
    <!-- Bootstrap core JavaScript -->
    <script src="AAA/vendor/jquery/jquery.min.js"></script>
    <script src="AAA/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="AAA/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

    <!-- Custom scripts for this template -->
    <script src="AAA/js/grayscale.min.js"></script>

  
  </body>

</html>
