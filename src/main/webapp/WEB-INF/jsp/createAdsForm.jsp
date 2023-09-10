<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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

<div id="order-form-div">

    <aside id="order-form-aside">

        <img src="https://img.freepik.com/free-vector/privacy-
        policy-concept-illustration_114360-7478.jpg?w=2000" id="order-form-image">
    </aside>
    <article id="order-article">


        <form:form modelAttribute="request" method="POST" action="${pageContext.request.contextPath}/products">

        <div>
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
                 class="bi bi-file-earmark-person-fill icon-position" viewBox="0 0 16 16">
                <path d="M9.293 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.707A1 1 0
        0 0 13.707 4L10 .293A1 1 0 0 0 9.293 0zM9.5 3.5v-2l3 3h-2a1 1 0 0 1-1-1zM11 8a3 3
        0 1 1-6 0 3 3 0 0 1 6 0zm2 5.755V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-.245S4 12 8 12s5 1.755 5 1.755z"></path>
            </svg>
            <h5 class="form-title"> your information :</h5>
        </div>

        <modelAttribute>adsForm</modelAttribute>
        <spring:bind path="firstname">

            <div class="mb-3 row">
                <label for="firstname" class="col-sm-2 col-form-label input-label">Firstname</label>
                <div class="col-sm-10">
                    <form:input path="firstname" type="text" placeholder="required" class="form-control order-input "
                                id="firstname"/>
                </div>
            </div>
        </spring:bind>

        <spring:bind path="lastname">

            <div class="mb-3 row">
                <label for="lastname" class="col-sm-2 col-form-label input-label">Lastname</label>
                <div class="col-sm-10">
                    <form:input path="lastname" type="text" placeholder="required" class="form-control order-input "
                                id="lastname"/>
                </div>
            </div>
        </spring:bind>

        <spring:bind path="email">
            <div class="mb-3 row">
                <label for="email" class="col-sm-2 col-form-label input-label">Email</label>
                <div class="col-sm-10">
                    <form:input path="email" type="email" placeholder="email@example.com"
                                class="form-control order-input " id="email"/>
                </div>
            </div>
        </spring:bind>


        <div>
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
                 class="bi bi-clipboard2-data-fill icon-position" viewBox="0 0 16 16">
                <path d="M10 .5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5.5.5 0 0 1-.5.5.5.5 0 0 0-.5.5V2a.5.5 0 0 0 .5.5h5A.5.5 0 0 0 11 2v-.5a.5.5 0 0 0-.5-.5.5.5 0 0 1-.5-.5Z"></path>
                <path d="M4.085 1H3.5A1.5 1.5 0 0 0 2 2.5v12A1.5 1.5 0 0 0 3.5 16h9a1.5 1.5 0 0 0 1.5-1.5v-12A1.5 1.5 0 0 0 12.5 1h-.585c.055.156.085.325.085.5V2a1.5 1.5 0 0 1-1.5 1.5h-5A1.5 1.5 0 0 1 4 2v-.5c0-.175.03-.344.085-.5ZM10 7a1 1 0 1 1 2 0v5a1 1 0 1 1-2 0V7Zm-6 4a1 1 0 1 1 2 0v1a1 1 0 1 1-2 0v-1Zm4-3a1 1 0 0 1 1 1v3a1 1 0 1 1-2 0V9a1 1 0 0 1 1-1Z"></path>
            </svg>
            <h5 class="form-title"> product information :</h5>
        </div>

        <spring:bind path="title">
            <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label input-label">Title</label>
                <div class="col-sm-10">
                    <form:input path="title" type="text" placeholder="required" class="form-control order-input "
                                id="title"/>
                </div>
            </div>
        </spring:bind>

        <spring:bind path="brandName">
            <div class="mb-3 row">
                <label for="brandName" class="col-sm-2 col-form-label input-label">Brand name</label>
                <div class="col-sm-10">
                    <form:input path="brandName" type="text" placeholder="" class="form-control order-input "
                                id="brandName"/>
                </div>
            </div>
        </spring:bind>


        <spring:bind path="parentCategory">
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label input-label">Category1</label>
            <div class="col-sm-10">
                <form:select path="parentCategory" class="form-select order-input"
                             aria-label="Default select example selection-box">
                    <form:option value="clothing" label="clothing"/>
                    <form:option value="bookAndStationery" label="book and stationery"/>
                    <form:option value="sportsEquipments" label="sport equipments"/>
                    <form:option value="digitalGoods" label="digital goods"/>
                    <form:option value="homeAndKitchen" label="home and kitchen"/>
                    <form:option value="beautyAndHealthy" label="beauty and healthy"/>
                </form:select>

            </div>
            </spring:bind>


            <spring:bind path="firstSubCategory">
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label input-label">Category2</label>
                <div class="col-sm-10">
                    <form:select path="firstSubCategory" class="form-select order-input"
                                 aria-label="Default select example selection-box">
                        <form:option value="children" label="children clothing"/>
                        <form:option value="book" label="book"/>
                        <form:option value="stationery" label="stationery"/>
                        <form:option value="sportsWear" label="sportsWear"/>
                        <form:option value="equipment" label="equipment"/>
                        <form:option value="mobile" label="mobile"/>
                        <form:option value="laptop" label="laptop"/>
                        <form:option value="camera" label="camera"/>
                        <form:option value="accessories" label="accessories"/>
                        <form:option value="kitchen" label="kitchen"/>
                        <form:option value="appliances" label="appliances"/>
                        <form:option value="catering" label="catering"/>
                        <form:option value="cosmetic" label="cosmetic"/>
                        <form:option value="healthy" label="healthy"/>
                        <form:option value="perfume" label="perfume"/>
                    </form:select>
                </div>
            </div>
            </spring:bind>


            <spring:bind path="secondSubCategory">
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label input-label">Category3</label>
                <div class="col-sm-10">
                    <form:select path="secondSubCategory" class="form-select order-input"
                                 aria-label="Default select example selection-box">
                        <form:option value="femaleClothing" label="female clothing"/>
                        <form:option value="femaleShoes" label="female shoes"/>
                        <form:option value="femaleAccessories" label="female accessories"/>
                        <form:option value="maleClothing" label="male clothing"/>
                        <form:option value="maleShoes" label="male shoes"/>
                        <form:option value="maleAccessories" label="male accessories"/>
                        <form:option value="newBorn" label="new born"/>
                        <form:option value="girlish" label="girlish"/>
                        <form:option value="boyish" label="boyish"/>
                        <form:option value="novel" label="novel"/>
                        <form:option value="educational" label="educational"/>
                        <form:option value="psycholosy" label="psycholosy"/>
                        <form:option value="other" label="other stasionery"/>
                        <form:option value="cooking" label="cooking"/>
                        <form:option value="penAndPencile" label="pen and pencile"/>
                        <form:option value="bagAndPencilCase" label="bag and pencilCase"/>
                        <form:option value="noteboock" label="noteboock"/>
                        <form:option value="service" label="service"/>
                        <form:option value="mobil" label="mobil"/>
                        <form:option value="mobilAccessory" label="mobilAccessory"/>
                        <form:option value="laptop" label="laptop"/>
                        <form:option value="laptopAccessory" label="laptopAccessory"/>
                        <form:option value="photography" label="photography"/>
                        <form:option value="filming" label="filming"/>
                        <form:option value="winterSport" label="winter sport"/>
                        <form:option value="martialArt" label="martial art"/>
                        <form:option value="maountaineerin" label="maountaineerin"/>
                    </form:select>
                </div>
            </div>
            </spring:bind>

            <spring:bind path="price">
            <div class="mb-3 row">
                <label for="Price" class="col-sm-2 col-form-label input-label">Price</label>
                <div class="col-sm-10">
                    <form:input path="price" type="text" placeholder="required" class="form-control order-input "
                                id="Price"/>
                </div>
            </div>
            </spring:bind>

            <div>
                <h5 class="form-title"> Products feature : </h5>
            </div>


            <div class="feature-div">

                <div class="feature-div-left">

                    <spring:bind path="color">
                        <div class="row g-3 align-items-center features-box">
                            <div class="col-auto">
                                <label for="Color" class="col-form-label feature-label">Color</label>
                            </div>
                            <div class="col-auto">
                                <form:input path="color" type="text" id="Color" placeholder="optional"
                                            class="form-control feature-input" style="width: 160px"/>
                            </div>
                        </div>
                    </spring:bind>

                    <spring:bind path="type">
                        <div class="row g-3 align-items-center features-box">
                            <div class="col-auto">
                                <label for="Type" class="col-form-label feature-label">Type</label>
                            </div>
                            <div class="col-auto">
                                <form:input path="type" type="text" id="Type" placeholder="optional"
                                            class="form-control feature-input" style="width: 160px"/>
                            </div>
                        </div>
                    </spring:bind>

                    <spring:bind path="Size">
                        <div class="row g-3 align-items-center features-box">
                            <div class="col-auto">
                                <label for="Size" class="col-form-label feature-label"> Size</label>
                            </div>
                            <div class="col-auto">
                                <form:input path="size" type="text" id="Size" placeholder="optional"
                                            class="form-control feature-input" style="width: 160px"/>
                            </div>
                        </div>
                    </spring:bind>
                </div>

                <div class="feature-div-right">

                    <spring:bind path="weight">
                        <div class="row g-3 align-items-center features-box">
                            <div class="col-auto">
                                <label for="Weight" class="col-form-label feature-label">Weight</label>
                            </div>
                            <div class="col-auto">
                                <form:input path="weight" type="text" id="Weight" placeholder="optional"
                                            class="form-control feature-input" style="width: 160px"/>
                            </div>
                        </div>
                    </spring:bind>

                    <spring:bind path="subject">
                        <div class="row g-3 align-items-center features-box">
                            <div class="col-auto">
                                <label for="Subject" class="col-form-label feature-label">Subject</label>
                            </div>
                            <div class="col-auto">
                                <form:input path="subject" type="text" id="Subject" placeholder="optional"
                                            class="form-control feature-input" style="width: 160px"/>
                            </div>
                        </div>
                    </spring:bind>

                    <spring:bind path="energy">
                        <div class="row g-3 align-items-center features-box">
                            <div class="col-auto">
                                <label for="Energy" class="col-form-label feature-label">Energy</label>
                            </div>
                            <div class="col-auto">
                                <form:input path="energy" type="text" id="Energy" placeholder="optional"
                                            class="form-control feature-input" style="width: 160px"/>
                            </div>
                        </div>
                    </spring:bind>
                </div>
            </div>

            <spring:bind path="image">
            <div class="mb-3">
                <label for="formFileMultiple" class="form-label feature-label" style="margin-left:50px">Select your
                    product photo</label>
                <form:input path="image" class="form-control order-input" type="file" id="formFileMultiple"/>
            </div>
            </spring:bind>

            <div class="buying-button-position">
                <a>
                    <button type="submit" class="btn btn-danger buying-button-style order-form-button">Submit
                        information
                    </button>
                </a>
            </div>
            </form:form>
    </article>
</div>

<script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>