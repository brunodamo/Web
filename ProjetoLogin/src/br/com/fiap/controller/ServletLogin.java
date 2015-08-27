package br.com.fiap.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.model.bo.LoginBO;

/**
 * Servlet implementation class ServletLogin
 */

public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		LoginBO lb = new LoginBO();
		boolean result = false;
		result = lb.validaLogin(request.getParameter("login"), request.getParameter("senha"));
		
		if (result == true){
			request.setAttribute("msg", "Sucesso");
			request.getRequestDispatcher("sucesso/sucesso.jsp").forward(request, response);
		}else{
			request.setAttribute("msg", "Erro");
			request.getRequestDispatcher("erro/erro.jsp").forward(request, response);
		}
		
	}

}
