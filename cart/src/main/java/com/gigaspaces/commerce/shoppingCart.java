package com.gigaspaces.commerce;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gigaspaces.commerce.common.ShoppingCartItem;

public class shoppingCart extends HttpServlet
{
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		System.out.println("within shopping cart servlet");

		response.setContentType("text/html");
		ServletOutputStream out = response.getOutputStream();
		out.print("<HTML><HEAD><TITLE>Supply Categories</TITLE><link rel=\"stylesheet\" type=\"text/css\" href=\"pages/css/gigaspaces.css\"></HEAD>");
		out.print("<BODY><CENTER>");



		out.print("<table>");
		out.print("<tr><td><CENTER><b><h2>GigaSpaces Store</h2></b></CENTER></td>");
		out.print("</tr>");
		out.print("</table>");

		out.print("<FONT SIZE='4' COLOR='navy'>");

		HttpSession session = request.getSession(true);
		ArrayList<ShoppingCartItem> scitems = (ArrayList<ShoppingCartItem>) session.getAttribute("cart");
		String name = request.getParameter("item");
		String price = request.getParameter("price");
		String skuId = request.getParameter("skuId");

		ShoppingCartItem newItem = new ShoppingCartItem();
		newItem.setName(name);
		newItem.setPrice(price);
		newItem.setSkuId(skuId);

		if (scitems == null)
		{
			scitems = new ArrayList<ShoppingCartItem>();
		} 
		
		out.print("<BR>added new element<BR>" + name);
		scitems.add(newItem);
		session.setAttribute("cart", scitems);
		



		out.print("</FONT>");
		out.print("<BR><A HREF='./welcome.jsp'>Back To Home Page</A><BR>");
		out.print("</BODY></HTML>");

	}


}