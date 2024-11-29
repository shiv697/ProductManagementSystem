<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="add" name="fn">
		<table border="1" align="center">
			

			<tr>
				<td>PRODUCTID:-</td>
				<td><input type="text" name="productId"></td>
			</tr>

			<tr>
				<td>PRODUCTNAME:-</td>
				<td><input type="text" name="productName"></td>
			</tr>

			<tr>
				<td>PRODUCTDESCRIPTION:-</td>
				<td><input type="text" name="productDescription"></td>
			</tr>

			<tr>
				<td>PRODUCTPRICE:-</td>
				<td><input type="text" name="productPrice"></td>
			</tr>

			<tr>
				<td>PRODQUANTITY:-</td>
				<td><input type="text" name="productQuantity"></td>
			</tr>

			<tr>
				<td>SUPPLIERID:-</td>
				<td><input type="text" name="supplier.supplierId"></td>
			</tr>
			<tr>
				<td>SUPPLIERNAME:-</td>
				<td><input type="text" name="supplier.supplierName"></td>
			</tr>
			<tr>
				<td>SUPPLIERCONTACT:-</td>
				<td><input type="text" name="supplier.supplierContact"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="AddProduct" colour="blue"></td>
			</tr>
		</table>
	</form>

</body>
</html>