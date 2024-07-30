<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<%@include file="./base.jsp" %>
	

</head>
<body>
 <!-- Add custom CSS -->
    <style>
        .animated-text {
            animation: color-change 5s infinite;
        }
        @keyframes color-change {
            0% { color: #000; }
            25% { color: #f00; }
            50% { color: #0f0; }
            75% { color: #00f; }
            100% { color: #000; }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h1 class="text-center mt-5 mb-3 animated-text">🌈 Fill The Product Details 🌈</h1> <!-- Animated text effect -->
                <form action="handle-product" method="post">
                    <div class="form-group">
                        <label for="name">Product Name</label>
                        <input type="text"
                               class="form-control"
                               id="name"
                               aria-describedby="productNameHelp"
                               name="name"
                               placeholder="Enter the product name here">
                    </div>
                    <div class="form-group">
                        <label for="description">Product Description</label>
                        <textarea class="form-control"
                                  name="description"
                                  id="description"
                                  rows="5"
                                  placeholder="Enter the product details"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="price">Product Price</label>
                        <input type="text"
                               class="form-control"
                               name="price"
                               id="price"
                               placeholder="Enter product price">
                    </div>
                    <div class="container text-center">
                        <a href="${pageContext.request.contextPath}" 
                        	class="btn btn-outline-danger">Back</a>
                        <button type="submit"
                                class="btn btn-primary">Add</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>