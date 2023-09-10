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
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85
                    3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11
                    0 5.5 5.5 0 0 1 11 0z"></path>
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
            <a class="nav-link active" aria-current="page" href="#">Product categories</a>
        </li>
        <li class="nav-item" style="padding: 0 20px 0">
            <a class="nav-link" href="${pageContext.request.contextPath}/orders/myOrder">My orders</a>
        </li>
        <li class="nav-item" style="padding: 0 20px 0">
            <a class="nav-link" href="${pageContext.request.contextPath}/products/mySale">My sales</a>
        </li>
    </ul>
</nav>
<aside class="-aside-category-image-position">
    <img src="https://img.freepik.com/free-vector/hands-choosing-products-category-while-doing-online
    -shopping-man-using-shop-application-smartphone-flat-vector-illustration-customer-making-electronic-payment
    -ecommerce-technology-concept_74855-24197.jpg" class="-aside-category-image" alt="image" id="image">
</aside>

<article class="-article-category-position">

    <div>
        <div class="card category my-card-body card-position" style="width: 14rem;">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgWEKgBQ7NFzZNVmYYKiJEKq3WUCKX6OmUvw&usqp=CAU"
                 class="card-img-top" alt="...">
            <div class="card-body">
                <a href="${pageContext.request.contextPath}/products/parent/clothing/1" class="btn btn-primary category-button"> Clothing</a>
            </div>
        </div>
    </div>
    <div>
        <div class="card category my-card-body card-position" style="width: 14rem;">
            <img src="https://img.freepik.com/premium-vector/stationery-icon-set-cartoon-style_96318-3921.jpg?w=2000"
                 class="card-img-top card-image" alt="...">
            <div class="card-body">
                <a href="${pageContext.request.contextPath}/products/parent/bookAndStationery/1"
                   class="btn btn-primary category-button">Book and stationery</a>
            </div>
        </div>
    </div>
    <div>
        <div class="card category my-card-body card-position" style="width: 14rem;">
            <img src="https://img.freepik.com/premium-vector/sports-related
            -icons-circle-shape_24908-9610.jpg?w=360" class="card-img-top" alt="...">
            <div class="card-body">
                <a href="${pageContext.request.contextPath}/products/parent/sportEquipments/1"
                   class="btn btn-primary category-button">Sport equipments</a>
            </div>
        </div>
    </div>
    <div>
        <div class="card category my-card-body card-position" style="width: 14rem;">
            <img src="https://thumbs.dreamstime.com/b/vintage-things-objects-flea-market-banner-vintage-things-objects
            -flea-market-antiques-shop-scene-old-rarity-elements-250803404.jpg"
                 class="card-img-top" alt="image">
            <div class="card-body">
                <a href="${pageContext.request.contextPath}/products/parent/digitalGoods/1"
                   class="btn btn-primary category-button">Digital goods</a>
            </div>
        </div>
    </div>
    <div>
        <div class="card category my-card-body card-position" style="width: 14rem;">
            <img src="https://thumbs.dreamstime.com/b/furniture-household-appliances-icons-set-furniture-household
            -appliances-icons-set-cartoon-style-furnishing-apartment-115340377.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <a href="${pageContext.request.contextPath}/products/parent/homeAndKitchen/1"
                   class="btn btn-primary category-button">Home and kitchen</a>
            </div>
        </div>
    </div>
    <div>
        <div class="card category my-card-body card-position" style="width: 14rem;">
            <img src="https://img.freepik.com/premium-vector/set-different-cosmetics-tubes-bottles-jars-body-butter
            -lotion-creame-lipstick-collection-colorful-skincare-eco-beauty-products-white-with-leaves_106612-380.jpg?w=2000"
                 class="card-img-top" alt="...">
            <div class="card-body">
                <a href="${pageContext.request.contextPath}/products/parent/beautyAndHealth/1"
                   class="btn btn-primary category-button">Beauty and health</a>
            </div>
        </div>
    </div>
</article>

<script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>
