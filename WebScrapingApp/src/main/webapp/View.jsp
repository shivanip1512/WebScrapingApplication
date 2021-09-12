<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Top Movies</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
	<%
	List<String> movieTitle = (List<String>) request.getAttribute("movieTitle");
	List<String> rating = (List<String>) request.getAttribute("rating");
	for (String movie : movieTitle) {
		System.out.println(movie);
	}
	for (String rated : rating) {
		System.out.println(rated);
	}
	%>
	
	
<table>
  <tr>
    <th>Movie</th>
    <th>Rating</th>
  </tr>
 <%
 StringBuilder trs = new StringBuilder();
 for(int i=0;i<movieTitle.size();i++){
	 trs.append("<tr>");
	 trs.append("<td>"+movieTitle.get(i)+"</td>").append("<td>"+rating.get(i)+"</td>");
	 trs.append("</tr>");
 }
 %>
 <%=trs %> 
</table>
</body>
</html>