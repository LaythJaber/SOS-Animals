<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Test</title>
</head>
<body>
    <form method="post" action="test1">
        <p>
            <label for="nom">Nom : </label>
            <input type="text" name="type" id="nom" />
        </p>
        <p>
            <label for="prenom">Prénom : </label>
            <input type="text" name="taille" id="prenom" />
        </p>
        
        <input type="submit" />
    </form>
    
    <ul>
        
        <c:forEach var="utilisateur" items="${ utilisateurs }">
            <li><c:out value="${ utilisateur.getTaille() }" /> <c:out value="${ utilisateur.espece }" /></li>
        </c:forEach>
    </ul>    
</body>
</html>