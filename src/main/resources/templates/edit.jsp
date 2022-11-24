<!DOCTYPE HTML>
<html lang="en"
      xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      layout:decorate="default">
    <head>
        <title>Edit Product</title>
    </head>
    <body>
        <div layout:fragment="content" class="row">
            <div class="col-xs-8 col-md-8">
                <h3>
                    <a href="/product" class="btn btn-lg btn-primary"><span class="glyphicon glyphicon-list"></span> Product</a>
                </h3>
                <h2>Update Your Product</h2>
                <form action="/update">
                    <div class="form-group">
                        <label for="email">Product Name:</label>
                        <input type="text" class="form-control" name="prodName" th:value="${product.prodName}" />
                    </div>
                    <div class="form-group">
                        <label for="email">Product Details</label>
                        <textarea class="form-control" name="prodDesc" cols="60" rows="3" th:text="${product.prodDesc}"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="email">Product Price</label>
                        <input type="number" class="form-control" name="prodPrice" th:value="${product.prodPrice}" />
                    </div>
                    <div class="form-group">
                        <label for="email">Product Image URL:</label>
                        <input type="url" class="form-control" name="prodImage" th:value="${product.prodImage}" />
                    </div>
                    <input type="hidden" name="id" th:value="${product.id}" />
                    <button type="submit" class="btn btn-success">Save</button>
                </form>
            </div>
        </div>
    </body>
</html>
