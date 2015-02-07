package com.gigaspaces.commerce;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gigaspaces.commerce.common.ShoppingCartItem;


public class viewShoppingCart extends HttpServlet
{
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		response.setContentType("text/html");
		ServletOutputStream out = response.getOutputStream();
		out.print("<HTML><HEAD><TITLE>Supply Categories</TITLE><link rel=\"stylesheet\" type=\"text/css\" href=\"pages/css/gigaspaces.css\"></HEAD>");
		out.print("<BODY><CENTER>");



		out.print("<table>");
		out.print("<tr><td><CENTER><b><h2>GigaSpaces Store Shopping Cart</h2></b></CENTER></td>");
		out.print("</tr>");
		out.print("</table>");

		out.print("<FONT SIZE='4' COLOR='navy'>");


		HttpSession session = request.getSession(true);
 
		ArrayList<ShoppingCartItem> scitems = (ArrayList<ShoppingCartItem>) session.getAttribute("cart");
		
		if (scitems == null)
		{
			out.print("Nothing in shopping cart<BR><BR>");
		} else {

						out.print("<BR><TABLE WIDTH='75%' BGCOLOR='wheat'>");
			out.print("<TR><TD><h2>Item</h2></TD><TD><h2>Price</h2></TD></TR>");
			System.out.println("Your shopping cart includes: ");
			float totalPrice = 0;
			
			for (ShoppingCartItem item : scitems)
			{
				out.print("<TR><TD>" + item.getName() + "</TD><TD>$" + item.getPrice() + "</TD></TR>");
				System.out.println("\tItem: " + item.getName() + " price: " + item.getPrice());
				totalPrice += Float.valueOf(item.getPrice().replace("$", ""));
			}
			
			DecimalFormat df = new DecimalFormat();
			df.setMaximumFractionDigits(2); 
			String totalPriceString = df.format(totalPrice);

			out.print("</TABLE>");
			out.print("<br />");
			out.print("<h2>Total: $" + totalPriceString + "</h2>");
			
		}



		out.print("</FONT>");
		out.print("<BR><A HREF='./shopping.jsp'>Back To The Shopping Page</A><BR>");
		out.print("<BR><A HREF='./welcome.jsp'>Back To Home Page</A><BR>");
		out.print("</BODY></HTML>");

	}


}