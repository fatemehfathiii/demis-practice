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
        <c:when test="${categoryName.equals('clothing')}">
            <div id="header-box">
                <div style="margin-right: 20%">
                    <div>
                        <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:
                                ANd9GcSsSOU1jKRt5E0aCiIzk4cPTm--kLrn9jbFwo0wTuQuB1Kl6nHN0IZP9-dcPUruxt_LCpM&usqp=CAU"
                                 class="card-img-top image-sub-card" alt="image">
                            <a href="${pageContext.request.contextPath}/products/first/female/1"
                               class="btn btn-primary sub-category-button-position ">Female</a>
                        </div>
                    </div>

                    <div>
                        <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:
                                ANd9GcQBlyjFo6Ce6p_UCKxGUqt9qOLx9mdyDT4_mwDFat4AjWtROBEI2BjbAVs0hUsdMwD5kfc&usqp=CAU"
                                 class="card-img-top image-sub-card" alt="image">
                            <a href="${pageContext.request.contextPath}/products/first/male/1"
                               class="btn btn-primary sub-category-button-position ">Male</a>
                        </div>
                    </div>

                    <div>
                        <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMv9b-
                                2iEm7t2H8MTnsK0JOF3TOS52px02BTWKWXt1jRt_a-I0J82UdI25zSdOy-K7wdc&usqp=CAU"
                                 class="card-img-top image-sub-card" alt="image">
                            <a href="${pageContext.request.contextPath}/products/first/Children/1"
                               class="btn btn-primary sub-category-button-position ">Children</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:when>


        <c:when test="${categoryName.equals('bookAndStationery')}">
        <div id="header-box">
            <div style="margin-right: 20%">
                <div>
                    <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3QU99zEi
                                _gr4aGUoRlMhtWs1rv_0Y5IX7S983ufi3JiwuAZS_1RxJVue4kQCZFP2ol0c&usqp=CAU"
                             class="card-img-top image-sub-card" alt="image">
                        <a href="${pageContext.request.contextPath}/products/first/book/1"
                           class="btn btn-primary sub-category-button-position ">Book</a>
                    </div>
                </div>

                <div>
                    <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                        <img src="https://5.imimg.com/data5/CT/BR/OC/ANDROID-11523011/product-jpeg.jpg"
                             class="card-img-top image-sub-card" alt="image">
                        <a href="${pageContext.request.contextPath}/products/first/stationery/1"
                           class="btn btn-primary sub-category-button-position ">Stationery</a>
                    </div>
                </div>
                </c:when>


                <c:when test="${categoryName.equals('sportEquipments')}">
                <div id="header-box">
                    <div style="margin-right: 20%">
                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0p-1
                                        -ABfrr6EbGfs1cVqL2yiZ7nZ9Jqmc_Gd1Y8J96OrNZhLwBVgPQoa98b2HmJ_c888&usqp=CAU"
                                     class="card-img-top image-sub-card" alt="image">
                                <a href="${pageContext.request.contextPath}/products/first/sportswear/1"
                                   class="btn btn-primary sub-category-button-position ">Sportswear</a>
                            </div>
                        </div>

                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpMtnTVUq4aug3ir7vzTbs
                                        O1qISYLmvrprWE1yIOAIxcOQnDwiQiqgvAwaMLMKR8pSk8A&usqp=CAU"
                                     class="card-img-top image-sub-card" alt="image">
                                <a href="${pageContext.request.contextPath}/products/first/equipment/1"
                                   class="btn btn-primary sub-category-button-position ">Equipment</a>
                            </div>
                        </div>
                    </div>
                    </c:when>


                    <c:when test="${categoryName.equals('digitalGoods')}">

                    <div style="margin-right: 20%">
                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNeIrGL0Y1r-43Ze7jlmUIxwmMK8kdjhg9PA&usqp=CAU"
                                     class="card-img-top image-sub-card" alt="image">
                                <a href="${pageContext.request.contextPath}/products/first/mobile/1"
                                   class="btn btn-primary sub-category-button-position ">Mobile</a>
                            </div>
                        </div>

                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://img.freepik.com/premium-photo/blank-screen-computer-notebook-white-background_493806-980.jpg"
                                     alt="image">
                                <a href="${pageContext.request.contextPath}/products/first/laptop/1"
                                   class="btn btn-primary sub-category-button-position ">Laptop</a>
                            </div>
                        </div>

                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAhPb0RhcwO4x1Zf-zb99PsNzTGQTnBsMacw&usqp=CAU"
                                     class="card-img-top image-sub-card" alt="image">
                                <a href="${pageContext.request.contextPath}/products/first/camera/1"
                                   class="btn btn-primary sub-category-button-position ">Camera</a>
                            </div>
                        </div>

                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj1NcKJBQEXurOjzEdNF9Ph-Pa346DZW2qhQ&usqp=CAU"
                                     class="card-img-top image-sub-card" alt="image">
                                <a href="${pageContext.request.contextPath}/products/first/accessories/1"
                                   class="btn  btn-primary sub-category-button-position">Accessories</a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:when>


                <c:when test="${categoryName.equals('homeAndKitchen')}">
                <div id="header-box">
                    <div style="margin-right: 20%">
                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://media.architecturaldigest.com/photos/60a6a478ced6797772f44d7a/4:3/w
                    _1424,h_1068,c_limit/20191011-DSC_7759-Edit_HI_RES.jpeg"
                                     class="card-img-top image-sub-card" alt="image">
                                <a href="${pageContext.request.contextPath}/products/first/kitchen/1"
                                   class="btn btn-primary sub-category-button-position ">Kitchen</a>
                            </div>
                        </div>

                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://www.getserveware.com/wp-content/uploads/2022/09/chafing-dishes-and-food-pans-buffet-setup.jpg"
                                     alt="image" class="card-img-top image-sub-card">
                                <a href="${pageContext.request.contextPath}/products/first/catering/1"
                                   class="btn btn-primary sub-category-button-position ">Catering</a>
                            </div>
                        </div>

                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://img.freepik.com/premium-vector/set-household-appliances-microwave
                                -oven-washing-machine-refrigerator-vacuum-cleaner-iron-stove-fan-air
                    -conditionertv-dishwasher-kitchen-hood-realistic-3d-vector-isolated_545793-1095.jpg?w=2000"
                                     alt="image" class="card-img-top image-sub-card">
                                <a href="${pageContext.request.contextPath}/products/first/appliance/1"
                                   class="btn btn-primary sub-category-button-position ">Appliance</a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:when>

                <c:when test="${categoryName.equals('beautyAndHealth')}">
                <div id="header-box">
                    <div style="margin-right: 20%">
                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://wallpaperaccess.com/full/6154553.jpg"
                                     class="card-img-top image-sub-card" alt="image">
                                <a href="${pageContext.request.contextPath}/products/first/cosmetic/1"
                                   class="btn btn-primary sub-category-button-position ">Cosmetic</a>
                            </div>
                        </div>

                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://thepointsguy.global.ssl.fastly.net/us/originals/2022/09/Cosmetics
                                -and-beauty-rpoduct-flat-lay_Iryna-Veklich.jpg"
                                     alt="image" class="card-img-top image-sub-card">
                                <a href="${pageContext.request.contextPath}/products/first/healthy/1"
                                   class="btn btn-primary sub-category-button-position ">Healthy</a>
                            </div>
                        </div>

                        <div>
                            <div class="card category my-card-body sub-category-card-position sub-category-card-style">
                                <img src="https://media.cnn.com/api/v1/images/stellar/prod/220707134827-editors-perfume-missdior.jpg?c=original"
                                     alt="image" class="card-img-top image-sub-card">
                                <a href="${pageContext.request.contextPath}/products/first/perfume/1"
                                   class="btn btn-primary sub-category-button-position ">Perfume</a>
                            </div>
                        </div>
                    </div>
                </div>
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
                        document.body.innerHTML = "<li class=page-item ><a class= page-link page-style href=/products/parent/${categoryName}/" + i + "></a></li>"
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
