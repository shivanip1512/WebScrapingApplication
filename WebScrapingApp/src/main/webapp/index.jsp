<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<pre>
	<form action="webScapper" method="post">
		<input type="hidden" name="url"
				value="https://www.imdb.com/india/top-rated-indian-movies/" /> 
		<input type="submit" value="Top Bollywood movies" />
	</form>
	<form action="webScapper" method="post">
		<input type="hidden" name="url"
				value="https://www.imdb.com/chart/top/" /> 
		<input type="submit" value="Top Hollywood movies" />
	</form>
	<form action="webScapper" method="post">
		<input type="hidden" name="url"
				value="https://www.imdb.com/india/top-rated-telugu-movies/" /> 
		<input type="submit" value="Top Tollywood movies" />
	</form>
	</pre>
</body>
</html>