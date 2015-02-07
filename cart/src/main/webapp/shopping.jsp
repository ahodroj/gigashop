<HTML>
<HEAD><TITLE>Shopping Page</TITLE>
<link rel="stylesheet" type="text/css" href="pages/css/gigaspaces.css">

</HEAD>

<BODY>

<% System.out.println("within shoppingcart.jsp"); %>

<table>
<tr><td align="left"><%@ include file="pages/includes/header.jspf" %></td></tr>
<tr><td><CENTER><b><h3>GigaSpaces Store</h3></b></CENTER></td></tr>
</table>
<BR>


<TABLE WIDTH='670' BGCOLOR="wheat">
	<TR><TD COLSPAN="3" ALIGN="center">Writing Supplies</TD></TR>
	<TR><TD>Box of 12 pens (black)</TD>
		<TD>$4.99</TD>
		<TD><A HREF="./addtocart?item=Box%20of%2012%20pens%20(black)&price=4.99&skuId=1">Add to cart</A></TD>
	</TR>
	<TR><TD>Box of 12 pens (blue)</TD>
		<TD>$4.99</TD>
		<TD><A HREF="./addtocart?item=Box%20of%2012%20pens%20(blue)&price=4.99&skuId=2">Add to cart</A></TD>
	</TR>
	<TR><TD>Box of 12 pens (red)</TD>
		<TD>$4.99</TD>
		<TD><A HREF="./addtocart?item=Box%20of%2012%20pens%20(red)&price=4.99&skuId=3">Add to cart</A></TD>
	</TR>
	<TR><TD>3 mechanical pencils</TD>
		<TD>$8.99</TD>
		<TD><A HREF="./addtocart?item=3%20mechanical%20pencils&price=8.99&skuId=4">Add to cart</A></TD>
	</TR>
</TABLE>
<BR>


<TABLE WIDTH='670' BGCOLOR="wheat">
	<TR><TD COLSPAN="3" ALIGN="center">Paper Supplies</TD></TR>
	<TR><TD>Package of 500 sheets multipurpose paper</TD>
		<TD>$6.99</TD>
		<TD><A HREF="./addtocart?item=Package%20of%20500%20sheets%20of%20multipurpose%20paper&price=6.99&skuId=5">Add to cart</A></TD>
	</TR>
	<TR><TD>Package of 5 legal pads</TD>
		<TD>$15.99</TD>
		<TD><A HREF="./addtocart?item=Package%20of%205%20legal%20pads&price=15.99&skuId=6">Add to cart</A></TD>
	</TR>
	<TR><TD>100 Post-It notes</TD>
		<TD>$7.99</TD>
		<TD><A HREF="./addtocart?item=100%20Post-It%20notes&price=7.99&skuId=7">Add to cart</A></TD>
	</TR>
	<TR><TD>1 subject notebook</TD>
		<TD>$7.99</TD>
		<TD><A HREF="./addtocart?item=1%20subject%20notebook&price=7.99&skuId=8">Add to cart</A></TD>
	</TR>
</TABLE>
<BR>


<TABLE WIDTH='670' BGCOLOR="wheat">
	<TR><TD COLSPAN="3" ALIGN="center">Furniture Supplies</TD></TR>
	<TR><TD>Corner computer desk</TD>
		<TD>$199.99</TD>
		<TD><A HREF="./addtocart?item=Corner%20computer%20desk&price=199.99&skuId=9">Add to cart</A></TD>
	</TR>
	<TR><TD>Adjustable chair</TD>
		<TD>$99.99</TD>
		<TD><A HREF="./addtocart?item=Adjustable%20chair&price=99.99&skuId=10">Add to cart</A></TD>
	</TR>
	<TR><TD>Leather adjustable chair</TD>
		<TD>$139.99</TD>
		<TD><A HREF="./addtocart?item=Leather%20adjustable%20chair&price=139.99&skuId=11">Add to cart</A></TD>
	</TR>

</TABLE>
<BR>
<table>
<tr align="center"><td><A HREF="./welcome.jsp">Back To The Home Page</A></td></tr>
</table>
<BR>

<BR>
<%@ include file="pages/includes/footer.jspf" %>
</BODY>
</HTML>