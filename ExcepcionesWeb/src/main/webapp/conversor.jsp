<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Conversor</title>
</head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>
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
	.sol{
		margin: 0 auto;
    	text-align: center;
    	width: 500px;
    	height: auto;
    	background-color: black;
    	color: white;
    	border: 2px solid white;
    	border-radius: 15px;
    	margin-top: 20px;
    	margin-bottom: 15px;
    	padding: 30px;  
	}
</style>

<body>

<!--entras en conversor y te pide el importe en euros. Con decimales.
Si hay más de dos decimales, se redondea
Pulsas un botón y te muestra el importe en dólares
El tipo de cambio es 1.17
Se muestra el resultado en euros con dos decimales-->

<h1>Conversor de Euros a Dólares</h1>
    
    <div class="container">
	    <form method="post" action="">
	        <label for="importe" class="form-label">Importe en Euros:</label>
	        <input type="number" class="form-control" step="0.01" name="importe" id="importe" required />
	        <input type="submit" value="Convertir" class="btn btn-danger" style="margin-top: 10px; margin-bottom: 10px;"/>
	    </form>
    </div>
	<div class="sol">
	    <%
	    // Obtener el importe en Euros ingresado
	    if (request.getMethod().equals("POST")) {
	        double importeEuros = Double.parseDouble(request.getParameter("importe"));
	        
	        // Redondear el importe a dos decimales
	        double importeRedondeado = Math.round(importeEuros * 100.0) / 100.0;
	        
	        // Calcular el importe en Dólares
	        double importeDolares = importeRedondeado * 1.17;
	        
	        // Mostrar el resultado en Euros y Dólares con dos decimales
	        out.println("<h3><p>Importe en Euros: " + String.format("%.2f", importeRedondeado) + "€</p></h3>");
	        out.println("<h3><p>Importe en Dólares: " + String.format("%.2f", importeDolares) + "$</p></h3>");
	    }
	    %>
    </div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>