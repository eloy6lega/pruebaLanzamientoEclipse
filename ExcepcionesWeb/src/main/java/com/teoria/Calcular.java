package com.teoria;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Calcular
 */
@WebServlet("/Calcular")
public class Calcular extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Calcular() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		int numero1 = Integer.parseInt(request.getParameter("numero1"));	
		int numero2 = Integer.parseInt(request.getParameter("numero2"));
		int solucion = 0;
		
		try {
			solucion = numero1/numero2;
		} catch (ArithmeticException e) {
			// TODO: handle exception
			response.getWriter().append("No es posible dividir entre 0");
		} catch (Exception e) {
			// TODO: handle exception
			response.getWriter().append("No funciona " + e.getMessage());
		}
		response.getWriter().append("La solución es: " + solucion);
		
		
	}//cierra post

}//cierra clase
