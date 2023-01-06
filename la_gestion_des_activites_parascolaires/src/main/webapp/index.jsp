<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Model.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	table,tr,th,td{border-collapse: collapse;text-align:center;}
	table{margin:0px 30px 0px 30px;}
	th{height:60px;font-size:20px;}
	td{font-size:20px;}
	body{display:flex;
	flex-direction:column;
	justify-content:center;
	}
	td a:hover{}
</style>
</head>
<body>
<h2 width=100% style="text-align:center;"> Inscription aux Clubs de l'esi : </h2>
	<form action="Servletclub" method="post">
	<table style=" border: 1px solid black;">
		<tr style="background-color:#3498DB;">
			<th > N°Club </th>
			<th> Nom Club </th>
			<th> Nom du President </th>
			<th> Date de Creation</th>
			<th> Action</th>
		</tr>
		<%  
		ConnexionBB.init();
		ArrayList<Club> p =ConnexionBB.AfficherClub();
		int j=1;
		for( Club i : p   ){%>
		
			<tr>
				<td ><% out.println(i.getIdclub()); %> </td>
				<td ><% out.println(i.getNomClub()); %> </td>
				<td > <% out.println(i.getNomPresident()); %> </td>
				<td > <% out.println(i.getDateCreation()); %> </td>
				<td > <a href="Servletclub?new=<%=j%>"> S'inscrire </a> </td>
		 	</tr>	
		
		<% j++; }  %>
		
	
	</table>
	</form>
</body>
</html>