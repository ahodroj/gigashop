<HTML>
<HEAD><TITLE>Shopping Page</TITLE>
<link rel="stylesheet" type="text/css" href="pages/css/gigaspaces.css">

</HEAD>

<BODY>
<%@ page import="com.gigaspaces.commerce.*" %>
<%@ page import="com.gigaspaces.commerce.common.*" %>
<%@ page import="java.util.ArrayList" %>
<% System.out.println("within shoppingcart.jsp"); %>

<table>
<tr><td align="left"><%@ include file="pages/includes/header.jspf" %></td></tr>
<tr><td><CENTER><b><h3>GigaSpaces Store</h3></b></CENTER></td></tr>
</table><BR>


<%
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
	
	scitems.add(newItem);
	session.setAttribute("cart", scitems);
	
%>


<BR>

<A HREF="./welcome.jsp">Back To The Home Page</A>
<BR>
</CENTER>
<BR>
<%@ include file="pages/includes/footer.jspf" %>
</BODY>
</HTML>