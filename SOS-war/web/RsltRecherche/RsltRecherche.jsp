<%-- 
    Document   : RsltRecherche
    Created on : 10 déc. 2017, 11:49:37
    Author     : LAYTH
--%>


<%@ page pageEncoding="UTF-8" %>
<%@page import="classesbd.Animal"%>
 <%@page import="java.util.ArrayList"%> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recherche</title>
  <!--       <script src="/SOS-war/RsltRecherche/jq.js"></script>
   <script src="/SOS-war/RsltRecherche/datatable.js"></script>     
<script src="/SOS-war/js/bootstrap.js"></script>
  <script src="/SOS-war/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/SOS-war/boot.min.css" >
       

<link rel="stylesheet" href="/SOS-war/css/bootstrap.css">
<link rel="stylesheet" href="/SOS-war/css/bootstrap.min.css"> 
<link rel="stylesheet" href="/SOS-war/css/bootstrap-theme.css">
<link rel="stylesheet" href="/SOS-war/css/bootstrap-theme.min.css">-->
  
  
   <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
     <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
    
    </head>
    
    <script type="text/javascript">
	$(document).ready(function() {
		
    $('#datatables').DataTable();
} );
 
</script>
    <body  >
       
                 
         <table id="datatables" class="display" cellspacing="0" width="100%" >
                 <thead>
                         <tr>
                                  <th >ESPECE</th><th>TYPE</th><th>TAILLE</th><th>REGION</th><th>AGE</th><th>ETAT</th>
                           
                           </tr>       
			
                           
                 </thead>
                 <tbody>
                              
                     <tr> <td >ESPECE</td><td>TYPE</td><td>TAILLE</td><td>REGION</td><td>AGE</td><td>ETAT</td> </tr>
               <%
             Animal an=new Animal();
        Object value = request.getAttribute("jeton");
       
        ArrayList<Animal> list = (ArrayList<Animal>)value;
   %>
            <%int sz= list.size();%>
            <%
           
           for(int j=0;j<sz;j++)
      {
          
          
        out.println("<tr><td>");out.println(list.get(j).getEspece());out.println("</td>");
        out.println("<td>"); out.println(list.get(j).getType());out.println("</td>");
        out.println("<td>");out.println(list.get(j).getTaille());out.println("</td>");
        out.println("<td>"); out.println(list.get(j).getRegion());out.println("</td>");
        out.println("<td>");out.println(list.get(j).getAge());out.println("</td>");
        out.println("<td>"); out.println(list.get(j).getEtat());out.println("</td></tr>");
             }
            %>
           
        
         
                     
                 </tbody>
                 
         </table>
  
    </body>
</html>
