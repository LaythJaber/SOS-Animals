<!DOCTYPE html>
<html>
  
  
<head>
<title>SOS Animaux</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width , initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css"> 
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
<script type="text/javascript" src="js/thickbox.js"></script>
<link rel="stylesheet" href="css/thickbox.css" type="text/css" media="screen" />

<style>

body{margin:40px;}
.btn-circle.btn-xl {
  width: 70px;
  height: 70px;
  padding: 10px 16px;
  font-size: 24px;
  line-height: 1.33;
  border-radius: 35px;
}
.glyphicon.glyphicon-plus
{
       line-height: -100px;
    font-size: 45px;
     
      margin: -2px;
}
.glyphicon.glyphicon-search
{
      line-height: -100px; 
    font-size: 45px;
     
      margin: -2px;
}
.glyphicon.glyphicon-shopping-cart
{
      line-height: -100px; 
    font-size: 40px;
     
      margin: -2px;
}
.glyphicon.glyphicon-question-sign
{
      line-height: -150px; 
    font-size: 43px;
     
      margin: -3px;
}
.glyphicon.glyphicon-globe 
{
       
   
    font-size: 45px;
     vertical-align: middle;
      margin: -2px;
}

.leftcontact {
  width:49.5%; 
  float:left;
  border-right: 1px dotted #CCC;
  box-sizing: border-box;
  padding: 0px 15px 0px 0px;
}

.rightcontact {
  width:49.5%;
  float:right;
  box-sizing: border-box;
  padding: 0px 0px 0px 15px;
}


</style>
<script>
    var i=0;
   
   function demarrer()
   {
    $('#form1').hide();}
    //alert("hi");
    function recherche()
    {
        if(i==0)
        {
        i=1;
            $('#form1').show();}
        else{
            i=0;
            $('#form1').hide();
        }
    }
    
    
</script>
</head>

<body onload="demarrer()">


<button onclick="recherche()" type="button" class="btn btn-primary btn-circle btn-xl"><i class="glyphicon glyphicon-search"></i></button>

<a href="http://localhost:8080/Projet_SOS_Animaux-war/login.jsp?keepThis=true&TB_iframe=true&height=300&width=500" title="Login" class="thickbox"><button type="button" class="btn btn-primary btn-circle btn-xl" >
     <i class="glyphicon glyphicon-plus"></i></button></a>
<button type="button" class="btn btn-primary btn-circle btn-xl" ><i class="glyphicon glyphicon-shopping-cart"></i></button>
<button type="button" class="btn btn-primary btn-circle btn-xl"><i class="glyphicon glyphicon-globe"></i></button>
<button type="button" class="btn btn-primary btn-circle btn-xl"><i class="glyphicon glyphicon-question-sign"></i></button>
<div id="form1" >
    <form action="test" method="POST">
	    <h3>Entrez les aspects de l'animal cherché </h3>
	    
   


    	<div class="leftcontact">
    	
            <div class="form-group">
                 <label for="espece">Espece</label>
				   <select class="form-control" id="espece" name="espece">
                                  <option>Crustacés</option>
            			          <option>Mollusques</option>
                      			  <option>Vers</option>
                                  <option>Poissons</option>
                                  <option>Insectes</option>
                                  <option>Batraciens et reptiles</option>
                                  <option>Mammifères </option>
                   	 	    </select>
			</div>
    	
    	 
            <div class="form-group">
                 <label for="taille">Taille</label>
				          <select class="form-control" id="taille" name="taille">
                                  <option>Petit</option>
            			          <option>Moyen</option>
                      			  <option>Grand</option>
                                  <option>Geant</option>
  
                   	 	    </select>
			</div>
    	<div class="form-group">
                 <label for="region">Region</label>
				          <select class="form-control" id="region" name="region">
                                  <option>Chaude</option>
            			          <option>Froide</option>
                       
                   	 	    </select>
			</div>

			       
                  

			
</div>
	<div class="rightcontact">	

    	 <div class="form-group">
    <label for="type">Type</label>
    <input type="text" class="form-control" id="type" placeholder="type" name="type">
  </div>

			<div class="form-group">
    <label for="type">Age</label>
    <input type="text" class="form-control" id="age" placeholder="Age" name="age">
  </div>
 <div class="form-group">
			        <label for="etat">Etat</label>
			        		<select class="form-control" id="etat" name="etat">
                                  <option>Grave</option>
            			          <option>Normal</option>
                      			  <option>Bon</option>
                                  <option>Excellent</option>
  
                   	 	    </select>
       				</div> 

			

			
	</div>
	
<button type="submit" class="btn btn-primary">Chercher</button>
	
</form>	
</div>
<a href="http://localhost:8080/Projet_SOS_Animaux-war/welcome.jsp">click me </a>




</body>
</html>
