<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IMarket</title>
    <link rel="icon" href="https://thumbs.dreamstime.com/b/store-icon-shop-retail-market-symbol-
    flat-vector-illustration-78815009.jpg">
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet"/>
</head>
<body>
<nav class=" navbar" style="background-color:#edf0f5 ">
    <div class="container-fluid">
        <img src="${pageContext.request.contextPath}/static/images/IMG_20230903_153114_456.png" width="200" height="50">
        <form action="${pageContext.request.contextPath}/products/all/1" method="get" class="d-flex" role="search">
            <input class="form-control rounded-start-pill" name="input" size="48%" type="text"
                   placeholder="what are you looking for?" aria-label="default input example">
            <button class="btn btn-danger" type="submit">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-search"
                     viewBox="0 0 16 16">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
                </svg>
            </button>
        </form>
    </div>
</nav>
<nav class="nav justify-content-center bg-primary-subtle">
    <ul class="nav nav-underline">
        <li class="nav-item" style="padding: 0 20px 0">
            <a class="nav-link" href="${pageContext.request.contextPath}/">HOME</a>
        </li>
        <li class="nav-item" style="padding: 0 20px 0">
            <a class="nav-link " aria-current="page" href="${pageContext.request.contextPath}/categories">Product
                categories</a>
        </li>
        <li class="nav-item" style="padding: 0 20px 0">
            <a class="nav-link" href="${pageContext.request.contextPath}/orders/myOrder">My orders</a>
        </li>
        <li class="nav-item" style="padding: 0 20px 0">
            <a class="nav-link" href="${pageContext.request.contextPath}/products/mySale">My sales</a>
        </li>
    </ul>
</nav>
<article class="details-article">
    <div class="details-box">
        <div class="card mb-3 details-card-position">
            <div class="row g-0">
                <div class="col-md-4">
                    <div>
                        <img src="${productDetails.image()}"
                             class="img-fluid rounded-start details-image-style" alt="no image">
                    </div>
                    <div class="buying-button-position">
                        <a href="/orders/add/productId=${productId}">
                            <button type="button" class="btn btn-danger buying-button-style">Order the product</button>
                        </a>
                    </div>

                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title details-title">${productDetails.title()}</h5>
                        <hr style="border: #ec0f23 1px solid;">

                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor"
                             class="bi bi-check-circle-fill icon-position" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477
                            9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a
                            .75.75 0 0 0-.01-1.05z"></path>
                        </svg>
                        <p class="card-text details-body"> price : ${productDetails.price()}</p>

                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor"
                             class="bi bi-check-circle-fill icon-position" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477
                            9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a
                            .75.75 0 0 0-.01-1.05z"></path>
                        </svg>
                        <p class="card-text details-body"> brand : ${productDetails.brandName()}</p>

                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor"
                             class="bi bi-check-circle-fill icon-position" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477
                            9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a
                            .75.75 0 0 0-.01-1.05z"></path>
                        </svg>
                        <p class="card-text details-body"> seller
                            : ${productDetails.firstname()+productDetails.lastname()}</p>

                        <c:forEach items="${productDetails.features()}" var="entry">
                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor"
                                 class="bi bi-check-circle-fill icon-position" viewBox="0 0 16 16">
                                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477
                            9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a
                            .75.75 0 0 0-.01-1.05z"></path>
                            </svg>
                            <p class="card-text details-body"> ${entry.key} : ${entry.value} </p>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </div>
    </div>
</article>

<script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>
