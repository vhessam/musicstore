<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="template/header.jsp" %>


<div class="container-wrapper">

    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>

            <p class="lead">Please update the product information:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post" commandName="product" enctype="multipart/form-data">


        <%--THIS is IMPORTNATN--%>
        <form:hidden path="productId"/>

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument"/>Instrument</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="record"/>Record</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessory"/>Accessory</label>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used"/>Used</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new"/>New</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active"/>Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="condition" value="inactive"/>Inactive</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>
            <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="productManufacturer">Product Manufacturer</label>
            <form:input path="productManufacturer" id="productManufacturer" class="form-Control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input id="productImage" path="" type="file" class="form:input-large"/>
        </div>

        <br><br>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory"/> " class="btn btn-default">Cancel</a>

        </form:form>


<%@include file="template/footer.jsp" %>