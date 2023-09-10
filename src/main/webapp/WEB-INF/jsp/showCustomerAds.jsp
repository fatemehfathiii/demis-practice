<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
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
            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/">HOME</a>
        </li>
        <li class="nav-item" style="padding: 0 20px 0">
            <a class="nav-link" href="${pageContext.request.contextPath}/categories">Product categories</a>
        </li>
        <li class="nav-item" style="padding: 0 20px 0">
            <a class="nav-link" href="${pageContext.request.contextPath}/orders/myOrder">My orders</a>
        </li>
        <li class="nav-item" style="padding: 0 20px 0">
            <a class="nav-link active " href="${pageContext.request.contextPath}/products/mySale">My sales</a>
        </li>
    </ul>
</nav>
<article class="orderList-article">
    <aside class="product-aside-btn">
        <a href="${pageContext.request.contextPath}/products/adsForm">
            <button type="button" class="btn btn-outline-danger create-product-btn">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                     class="bi bi-clipboard2-plus-fill" viewBox="0 0 16 16">
                    <path d="M10 .5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5.5.5 0 0 1-.5.5.5.5 0 0 0-.5.5V2a.5.5 0 0 0 .5.5h5A.5.5 0 0 0 11 2v-.5a.5.5 0 0 0-.5-.5.5.5 0 0 1-.5-.5Z"></path>
                    <path d="M4.085 1H3.5A1.5 1.5 0 0 0 2 2.5v12A1.5 1.5 0 0 0 3.5 16h9a1.5 1.5 0 0 0 1.5-1.5v-12A1.5 1.5 0 0 0 12.5 1h-.585c.055.156.085.325.085.5V2a1.5 1.5 0 0 1-1.5 1.5h-5A1.5 1.5 0 0 1 4 2v-.5c0-.175.03-.344.085-.5ZM8.5 6.5V8H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V9H6a.5.5 0 0 1 0-1h1.5V6.5a.5.5 0 0 1 1 0Z"></path>
                </svg>
                Define your product ad
            </button>
        </a>
    </aside>
    <header class="orderList-header">
        <img src="https://img.freepik.com/premium-vector/digital-marketing-concept-with-people-scene-man-with-megaphone-makes-ad-campaign-online-creates-content-publishes
        -posts-attracts-users-vector-illustration-with-characters-flat-design-web_9209-9810.jpg"
             class="orderList-image">
    </header>
    <div class="orderList-body">
        <c:choose>
            <c:when test="${productList.size() != 0}">
                <c:forEach items="${productList}" var="product">
                    <div class="card card-position product-card">
                        <img src="${product.image()}"
                             class="card-img-top product-card-image" alt="there is no image for this product">
                        <div class="card-body">
                            <div style="border:solid 1px white" class="product-title-position">
                                <h5 class="card-title product-title">${product.title()}</h5>
                            </div>

                            <div style="border:solid 1px white" class="ad-price-box">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                     class="bi bi-currency-dollar icon-position" viewBox="0 0 16 16">
                                    <path d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714
                            2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z"></path>
                                </svg>
                                <p class="card-text fw-bold">${product.price()}</p>
                            </div>


                            <div class="update-btn-position">
                                <div class="update-btn">
                                    <a href="/products/editForm/${product.id()}">
                                        <button type="button" class="btn btn-danger">Update</button>
                                    </a>
                                </div>
                                <div class="delete-btn">
                                    <a href="/products/delete/${product.id()}">
                                        <button type="button" class="btn btn-danger">Delete</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <div>
                    <h1 class="heading-position  fst-italic heading-style">
                        No ads has been registered for you!
                    </h1>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</article>
<c:if test="${countOfPages > 1}">
    <footer>
        <ul class="pagination pagination-sm footer-center ">
            <script>
                for (let i = 0; i < ${countOfPages}; i++) {
                    document.body.innerHTML = "<li class=page-item ><a class= page-link page-style href=/products/ads/" + i + "></a></li>"
                }
            </script>
        </ul>
    </footer>
</c:if>

<script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>