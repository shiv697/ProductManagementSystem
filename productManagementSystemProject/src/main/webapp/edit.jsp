<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Product</title>
</head>
<body>
    <h1 align="center">EDIT DATA</h1>

    <form action="update" method="post">
        <table border="1" align="center">
            <!-- Hidden input for Product ID -->
            <input type="hidden" name="productId" value="${data.productId}">

            <!-- Product Name -->
            <tr>
                <td>PRODUCT NAME:</td>
                <td><input type="text" name="productName" value="${data.productName}"></td>
            </tr>

            <!-- Product Description -->
            <tr>
                <td>PRODUCT DESCRIPTION:</td>
                <td><input type="text" name="productDescription" value="${data.productDescription}"></td>
            </tr>

            <!-- Product Quantity -->
            <tr>
                <td>PRODUCT QUANTITY:</td>
                <td><input type="text" name="productQuantity" value="${data.productQuantity}"></td>
            </tr>
            
            <!-- Product Price -->
            <tr>
                <td>PRODUCT PRICE:</td>
                <td><input type="text" name="productPrice" value="${data.productPrice}"></td>
            </tr>

            <!-- Supplier ID -->
            <tr>
                <td>SUPPLIER ID:</td>
                <td><input type="text" name="supplierId" value="${data.supplier.supplierId}"></td>
            </tr>

            <!-- Supplier Name -->
            <tr>
                <td>SUPPLIER NAME:</td>
                <td><input type="text" name="supplierName" value="${data.supplier.supplierName}"></td>
            </tr>

            <!-- Supplier Contact -->
            <tr>
                <td>SUPPLIER CONTACT:</td>
                <td><input type="text" name="supplierContact" value="${data.supplier.supplierContact}"></td>
            </tr>

            <!-- Submit Button -->
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="UPDATE" style="background-color:blue; color:white;">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
