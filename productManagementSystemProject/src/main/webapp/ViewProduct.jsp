<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<center><h1>PRODUCT INFORMAITION</h1></center>

<script type="text/javascript">
function AddProduct() 
{
	
	document.fn.action="AddProduct.jsp";
	document.fn.submit();
}
function deleteProduct() {
	
	alert("Delete Data");
	document.fn.action="delete";
	document.fn.submit();
}
function editData() {

	document.fn.action="edit";
	document.fn.submit();
}
</script>
</head>
<body>
	<form name="fn">
          <table border="1" align="center">
			<th>Sr No</th>
			<th>productId</th>
			<th>productName</th>
			<th>productDescription</th>
			<th>productQuantity</th>
			<th>productPrice</th>
			<th>supplierId</th>
			<th>supplierName</th>
			<th>supplierContact</th>
			<tr>
				<c:forEach items="${data}" var="p">
				
					<tr>
					<td><input type="radio" name="productId" value="${p.productId}"></td>
					<td>${p.productId}</td>
					<td>${p.productName}</td>
					<td>${p.productDescription}</td>
					<td>${p.productQuantity}</td>
                      <td>${p.productPrice}</td>
                      <td>${p.supplier.supplierId}}</td>
                      <td>${p.supplier.supplierName}</td>
					<td>${p.supplier.supplierContact}</td>
					</tr>
					</c:forEach>
					</table>

<table border="1" align="center">
<tr>
<td><input type="button" value="EDIT" onclick="editData()"></td>
<td><input type="button" value="ADD" onclick="addProduct()"></td>
<td><input type="button" value="DELETE" onclick="deleteProduct()"></td>

</tr>
</table>
	</form>
</body>
</html>