<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DIVISIÓN</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    
    <style type="text/css">
    	body{
    	background-color: antiquewhite;
    	color: black;
   		margin: 0 auto;
   		text-align: center;
    	}
    	
    	.container{
    	margin: 0 auto;
    	text-align: center;
    	width: 300px;
    	height: auto;
    	background-color: white;
    	color: black;
    	border: 2px solid black;
    	border-radius: 15px;
    	margin-top: 20px;
    	margin-bottom: 15px;
    	padding: 30px;    	
    	}
    	
    </style>
    
  </head>
  <body>
  
  	<h1>Cliente servidor</h1>
  	
  	<a href="conversor.jsp">Conversor de Divisas</a>
  	
	<%= new Date() %>
	
	<div class="container">
		<form method="post" action="Calcular">
		  <div class="mb-3">
		    <label for="numero1" class="form-label">Dime el primer número</label>
		    <input type="number" class="form-control" name="numero1" id="numero1" >
		  </div>
		  <div class="mb-3">
		    <label for="numero2" class="form-label">Dime el segundo número</label>
		    <input type="number" class="form-control" name="numero2" id="numero2" >
		  </div>
		  <button type="submit" class="btn btn-primary">Dividir</button>
		</form>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </body>
</html>