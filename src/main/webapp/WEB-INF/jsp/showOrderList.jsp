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
            <a class="nav-link active" href="#">My orders</a>
        </li>
        <li class="nav-item" style="padding: 0 20px 0">
            <a class="nav-link" href="${pageContext.request.contextPath}/products/mySale">My sales</a>
        </li>
    </ul>
</nav>

<article class="orderList-article">

<header class="orderList-header">
        <img src="https://img.freepik.com/premium-vector/online-shopping-concept-marketing
        -digital-marketing-online-store-vector-cartoon-illustration_508021-628.jpg" class="orderList-image">
    </header>
    <div class="orderList-body">

        <c:choose>
            <c:when test="${orderList.size() !=0}">

                <c:forEach items="${orderList}" var="orderDetail">

                    <div class="card mb-3 order-cards">
                        <div class="row g-0 ">
                            <div class="col-md-4 order-cards-img-position">
                                <img src="${orderDetail.productImage()}"
                                     class="img-fluid rounded-start order-cards-img" alt="...">
                            </div>
                            <div class="col-md-8 order-card-body">
                                <div class="card-body">
                                    <h5 class="card-title details-title">${orderDetail.productTitle()}</h5>
                                    <hr style="border: #f60101 solid 2px">
                                    <div>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                             fill="currentColor"
                                             class="bi bi-circle-fill order-icon-position" viewBox="0 0 16 16">
                                            <circle cx="8" cy="8" r="8"></circle>
                                        </svg>
                                        <p class="card-text details-body order-key-position">Order code : ${orderDetail.orderCode()}</p>
                                    </div>

                                    <div style="margin-top: 15px">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                             fill="currentColor"
                                             class="bi bi-circle-fill order-icon-position" viewBox="0 0 16 16">
                                            <circle cx="8" cy="8" r="8"></circle>
                                        </svg>
                                        <p class="card-text details-body order-key-position"> Quantity :${orderDetail.quantity()}</p>
                                    </div>

                                    <div style="margin-top: 15px">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                             fill="currentColor"
                                             class="bi bi-circle-fill order-icon-position" viewBox="0 0 16 16">
                                            <circle cx="8" cy="8" r="8"></circle>
                                        </svg>
                                        <p class="card-text details-body order-key-position">Order date : ${orderDetail.orderDate()}</p>
                                    </div>

                                    <div style="margin-top: 15px">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                             fill="currentColor"
                                             class="bi bi-circle-fill order-icon-position" viewBox="0 0 16 16">
                                            <circle cx="8" cy="8" r="8"></circle>
                                        </svg>
                                        <p class="card-text details-body order-key-position">Delivery date :
                                                ${orderDetail.deliverDate()}</p>
                                    </div>

                                    <div style="margin-top: 15px">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                             fill="currentColor"
                                             class="bi bi-circle-fill order-icon-position" viewBox="0 0 16 16">
                                            <circle cx="8" cy="8" r="8"></circle>
                                        </svg>
                                        <p class="card-text details-body order-key-position">Status : ${orderDetail.orderStatus()}</p>
                                    </div>

                                    <div style="margin-top: 15px">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                             fill="currentColor"
                                             class="bi bi-circle-fill order-icon-position" viewBox="0 0 16 16">
                                            <circle cx="8" cy="8" r="8"></circle>
                                        </svg>
                                        <p class="card-text details-body order-key-position">Total price : ${orderDetail.totalPrice()}</p>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <div>
                    <h1 class="heading-position  fst-italic heading-style">
                        No order has been registered for you!
                    </h1>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</article>
<c:if test="${pagesCount > 1}">
    <footer>
        <ul class="pagination pagination-sm footer-center ">
            <script>
                for (let i = 0; i < ${pagesCount}; i++) {
                    document.body.innerHTML="<li class=page-item ><a class= page-link page-style href=/orders/all/"+i+"></a></li>"
                }
            </script>
        </ul>
    </footer>
</c:if>
<script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>
