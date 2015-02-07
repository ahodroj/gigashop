<HTML>
<HEAD><TITLE>Home Page</TITLE>

<link rel="stylesheet" type="text/css" href="pages/css/gigaspaces.css">

</HEAD>

<BODY>
<%@ page import="com.gigaspaces.commerce.*" %>
<%@ page import="com.gigaspaces.commerce.common.*" %>
<%@ page import="java.util.ArrayList" %>

<% System.out.println("within welcome.jsp"); %>

<table>
<tr><td align="left"><%@ include file="pages/includes/header.jspf" %></td></tr>
<tr><td><CENTER><b><h3>Welcome to the GigaSpaces Store</h3></b></CENTER></td>
<tr><td>&nbsp;</td><tr>
</table>

<p><A HREF='shopping.jsp'>Go Shopping</A>
<p><A HREF='./viewshoppingcart'>View Shopping Cart 
<%
	ArrayList<ShoppingCartItem> scitems = (ArrayList<ShoppingCartItem>) session.getAttribute("cart");
	if (scitems == null)
	{
		out.print("(empty)");
		
	} else {
		if(scitems.size() == 1) {
			out.print("("  + scitems.size() + " item)");
		} else {
			out.print("("  + scitems.size() + " items)");
		}
		
	}

%></A>
<BR>


<%@ include file="pages/includes/footer.jspf" %>
</BODY>
</HTML>