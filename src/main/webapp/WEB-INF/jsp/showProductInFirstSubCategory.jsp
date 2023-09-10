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
            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/categories">Product
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
<div style="margin: 0">
    <header>

        <c:choose>

            <c:when test="${subCategoryName.equals('female')}">
                <div class="second-category-position">
                    <a href="${pageContext.request.contextPath}/products/second/femaleClothing/1">
                        <button type="button"
                                class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">
                            Female clothing
                        </button>
                    </a>
                    <a href="${pageContext.request.contextPath}/products/second/femaleShoes/1">
                        <button type="button"
                                class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">
                            Female
                            shoes
                        </button>
                    </a>

                    <a href="${pageContext.request.contextPath}/products/second/femaleAccessories/1">
                        <button type="button"
                                class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold">
                            Female
                            accessories
                        </button>
                    </a>
                </div>
            </c:when>

            <c:when test="${subCategoryName.equals('male')}">
                <a href="${pageContext.request.contextPath}/products/second/maleClothing/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Male
                        clothing
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/maleShoes/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Male
                        shoes
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/maleAccessories/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold">Male
                        accessories
                    </button>
                </a>

            </c:when>

            <c:when test="${subCategoryName.equals('children')}">
                <a href="${pageContext.request.contextPath}/products/second/girlish/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">girlish
                    </button>
                </a>

                <a href="${pageContext.request.contextPath}/products/second/boyish/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">boyish
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/new born/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold">new born
                    </button>
                </a>
            </c:when>

            <c:when test="${subCategoryName.equals('book')}">
                <button href="${pageContext.request.contextPath}/products/second/novels/1" type="button"
                        class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">novels
                </button>
                <button href="${pageContext.request.contextPath}/products/second/educationalBooks/1" type="button"
                        class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Educational
                    books
                </button>
                <button href="${pageContext.request.contextPath}/products/second/psychologyBooks/1" type="button"
                        class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold">Psychology
                    books
                </button>
                <button href="${pageContext.request.contextPath}/products/second/otherBooks/1" type="button"
                        class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold">Other books
                </button>
            </c:when>

            <c:when test="${subCategoryName.equals('stationery')}">
                <a href="${pageContext.request.contextPath}/products/second/penAndPencil/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Pen and
                        pencil
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/notebookAndPaper/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">
                        Notebook
                        and paper
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/bagAndPencilCase/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold">Bag and
                        pencil case
                    </button>
                </a>

            </c:when>

            <c:when test="${subCategoryName.equals('sportswear')}">
                <a href="${pageContext.request.contextPath}/products/second/feMale/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Female
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/male/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Male
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/sportsAccessories/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold">Sports
                        accessories
                    </button>
                </a>
            </c:when>

            <c:when test="${subCategoryName.equals('equipment')}">
                <a href="${pageContext.request.contextPath}/products/second/winterSports/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold "> Winter
                        sports
                    </button>
                </a>

                <a href="${pageContext.request.contextPath}/products/second/materSports/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold "> Water
                        sports
                    </button>
                </a>

                <a href="${pageContext.request.contextPath}/products/second/martialArts/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold">Martial
                        arts
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/mountaineering/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold">
                        Mountaineering
                    </button>
                </a>
            </c:when>

            <c:when test="${subCategoryName.equals('mobile')}">
                <a href="${pageContext.request.contextPath}/products/second/mobile/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Mobile
                    </button>
                </a>

                <a href="${pageContext.request.contextPath}/products/second/mobilesAccessories/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Mobiles
                        accessories
                    </button>
                </a>

            </c:when>

            <c:when test="${subCategoryName.equals('laptop')}">
                <a href="${pageContext.request.contextPath}/products/second/laptop/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Laptop
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/laptopAccessories/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Laptop
                        accessories
                    </button>
                </a>

            </c:when>

            <c:when test="${subCategoryName.equals('camera')}">
                <a href="${pageContext.request.contextPath}/products/second/photography/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">
                        Photography
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/filming/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Filming
                    </button>
                </a>
            </c:when>

            <c:when test="${subCategoryName.equals('accessories')}">

                <a href="${pageContext.request.contextPath}/products/second/mobile/1">
                </a>
                <a href="${pageContext.request.contextPath}/products/second/audio/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Audio
                    </button>
                </a>

                <a href="${pageContext.request.contextPath}/products/second/office/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Office
                    </button>
                </a>

                <a href="${pageContext.request.contextPath}/products/second/photography/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">
                        Photography
                    </button>
                </a>
            </c:when>

            <c:when test="${subCategoryName.equals('kitchen')}">
                <a href="${pageContext.request.contextPath}/products/second/cooking/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Cooking
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/servingTea/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Serving
                        tea
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/disposable/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">
                        Disposable
                    </button>
                </a>
            </c:when>

            <c:when test="${subCategoryName.equals('catering')}">
                <a href="${pageContext.request.contextPath}/products/second/services/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">
                        Services
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/pitcherAndGlass/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Pitcher
                        and
                        glass
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/cateringAndServingTools/1">
                    <button
                            type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">
                        Catering &
                        Serving tools
                    </button>
                </a>


            </c:when>
            <c:when test="${subCategoryName.equals('appliance')}">
                <a href="${pageContext.request.contextPath}/products/second/cookingTools/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Cooking
                        tools
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/refrigeratorAndFreezer/1">
                    <button
                            type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">
                        Refrigerator & Freezer
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/washingAndCleaningTools/1">
                    <button
                            type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold">Washing
                        &
                        Cleaning tools
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/drinkMaker/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Drink
                        maker
                    </button>
                </a>
            </c:when>

            <c:when test="${subCategoryName.equals('cosmetic')}">
                <a href="${pageContext.request.contextPath}/products/second/faceMakeup/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Face
                        makeup
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/skinMakeup/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Eye
                        makeup
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/lipMakeup/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Lip
                        makeup
                    </button>
                </a>
            </c:when>

            <c:when test="${subCategoryName.equals('healthy')}">
                <a href="${pageContext.request.contextPath}/products/second/hairCare/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Hair
                        care
                    </button>
                </a>

                <a href="${pageContext.request.contextPath}/products/second/skinCare/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Skin
                        care
                    </button>
                </a>
                <a href="${pageContext.request.contextPath}/products/second/bodyHygiene/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Body
                        hygiene
                    </button>
                </a>
                <a>
                    <button href="${pageContext.request.contextPath}/products/second/oralHealth/1" type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold ">Oral
                        health
                    </button>
                </a>
            </c:when>
            <c:when test="${subCategoryName.equals('perfume')}">

                <a href="${pageContext.request.contextPath}/products/second/femalePerfume/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold">Female
                        perfume
                    </button>
                </a>

                <a href="${pageContext.request.contextPath}/products/second/malePerfume/1">
                    <button type="button"
                            class="btn btn-outline-danger second-category-style rounded-pill text-wrap fw-bold"> Male
                        perfume
                    </button>
                </a>
            </c:when>

        </c:choose>

    </header>
    <article>
        <div id="article-box">
            <c:choose>

                <c:when test="${productList.size() == 0}">
                    <div>
                        <h1 class="heading-position  fst-italic heading-style">
                            there is no products in this category!
                        </h1>
                    </div>
                </c:when>
                <c:otherwise>
                    <c:forEach items="${productList}" var="product">

                        <div class="card card-position product-card">
                            <img src="${product.image()}" alt="there is not image for this product">
                            <div class="card-body">
                                <div style="border:solid 1px white" class="product-title-position">
                                    <h5 class="card-title product-title">${product.title()}</h5>
                                </div>

                                <div style="border:solid 1px white" class="product-price">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                         class="bi bi-currency-dollar icon-position" viewBox="0 0 16 16">
                                        <path d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714
                            2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z"></path>
                                    </svg>
                                    <p class="card-text fw-bold">${product.price()}</p>
                                </div>
                                <c:choose>
                                <c:when test="${product.exist == 'true'}">

                                <div style="border:solid 1px #fefcff" class="exist-box">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" fill="currentColor"
                                         class="bi bi-check-circle icon-position" viewBox="0 0 16 16">
                                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"></path>
                                        <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z"></path>
                                    </svg>
                                    <p class="card-text fst-italic exist-text">exist</p>

                                    </c:when>
                                    <c:otherwise>

                                        <div style="border:solid 1px #fefcff" class="exist-box">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="13" height="13"
                                                 fill="currentColor"
                                                 class="bi bi-x-circle icon-position" viewBox="0 0 16 16">
                                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"></path>
                                                <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"></path>
                                            </svg>
                                            <p class="card-text fst-italic exist-text">Not exist</p>
                                        </div>

                                    </c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="details-btn-position ">
                                    <a href="/products/details/${product.id()}" class="btn btn-primary details-btn">Show
                                        details</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>


                </c:otherwise>

            </c:choose>
        </div>
    </article>
    <c:if test="${countOfPages > 1}">
        <footer>
            <ul class="pagination pagination-sm footer-center ">
                <script>
                    for (let i = 0; i < ${countOfPages}; i++) {
                        document.body.innerHTML="<li class=page-item ><a class= page-link page-style href=/products/first/${subCategoryName}/"+i+"></a></li>"
                    }
                </script>
            </ul>
        </footer>
    </c:if>
</div>

<script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>

