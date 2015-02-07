<HTML>
<HEAD><TITLE>Shopping Page</TITLE>
<link rel="stylesheet" type="text/css" href="pages/css/gigaspaces.css">

</HEAD>

<BODY>
<%@ page import="com.gigaspaces.commerce.common.ShoppingCartItem" %>
<%@ page import="java.util.ArrayList" %>

<% System.out.println("within viewshoppingcart.jsp"); %>

<CENTER>
	<%@ include file="pages/includes/header.jspf" %>
<BR><BR>


<%
	ArrayList<ShoppingCartItem> scitems = (ArrayList<ShoppingCartItem>) session.getAttribute("cart");

	if (scitems == null)
	{
		out.print("Nothing in shopping cart");
	} else {
		for (ShoppingCartItem item : scitems)
		{
			out.print(item.getName());
		}
	}


%>


<BR>

<A HREF="./welcome.jsp">Back To The Home Page</A>
<BR>
</CENTER>
<BR>
<%@ include file="pages/includes/footer.jspf" %>
</BODY>
</HTML>