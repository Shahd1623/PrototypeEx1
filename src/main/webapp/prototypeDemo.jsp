<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ page import="com.prototype.Button" %>
<%@ page import="com.prototype.PrototypeRegistry" %>
<%@ page import="com.prototype.Prototype" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prototype Demo</title>
</head>
<body>
	<h1>Prototype Demo</h1>
<%

    // Create a new PrototypeRegistry
    PrototypeRegistry registry = new PrototypeRegistry();

    // Create a Button prototype
    Button redButtonPrototype = new Button(10, 40, "red");

    // Add the Button prototype to the registry
    registry.addItem("LandingButton", redButtonPrototype);

    // Retrieve a clone of the red Button prototype from the registry
    Button clonedButton = (Button) registry.getByColor("red");
%>
    
<p>Cloned Button:<br>
	x=<%= clonedButton.getX() %><br> 
	y=<%= clonedButton.getY() %><br>
	color=<%= clonedButton.getColor() %></p>

</body>
</html>