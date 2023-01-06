<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>hi</h1>
<form action="">
	<label>id Club</label>
	<input type="text" id="idClub" name="idClub" value="<%=request.getAttribute("iaa")%>" readonly>
	<label>Nom:</label>
	<input type="text" id="Nom" name="Nom" placeholder="Nom abonne" required>
	<label>Prenom:</label>
	<input type="text" id="Prenom" name="Prenom" placeholder="Prenom abonne" required>
	<input type="submit" id="enregister" name="enregister" value="enregister">
</form>
</body>
</html>