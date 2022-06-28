package com.invoice;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InvoiceServlet
 */
@WebServlet("/invoice")
public class InvoiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("JSP is Working");
		
		String invoice_no = request.getParameter("invoice");
		String time_date = request.getParameter("myDate");
		String recieved_by = request.getParameter("myName");
		String address = request.getParameter("myText");
		String amt = request.getParameter("amt");
		String bal_due = request.getParameter("due_bal");

		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/export_invoice?useSSL=false","root","Chirag@2002");
			PreparedStatement pst = con.prepareStatement("Insert into invoice_details(invoice_no, time_date, recieved_by, address, amt, bal_due) values(?,?,?,?,?,?) ");
				pst.setString(1, invoice_no);
				pst.setString(2, time_date);
				pst.setString(3, recieved_by);
				pst.setString(4, address);
				pst.setString(5, amt);
				pst.setString(6, bal_due);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("index.jsp");
			if(rowCount > 0)
			{
				request.setAttribute("status", "success");
			}else{
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
			}
		catch(Exception e){
			e.printStackTrace();
			}
		finally{
			try{
			con.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
			
	}
	}

