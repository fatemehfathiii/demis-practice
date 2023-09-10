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
<nav class=" navbar" style="background-color:#b2c8d7 ">
    <div class="container-fluid">
        <img src="${pageContext.request.contextPath}/static/images/IMG_20230903_153114_456.png" width="200" height="50">
        <form action="${pageContext.request.contextPath}/products/all/1" method="get" class="d-flex" role="search">
            <input name="input" class="form-control rounded-start-pill" size="48%" type="text"
                   placeholder="what are you looking for?" aria-label="default input example">
            <button class="btn btn-danger" type="submit">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-search"
                     viewBox="0 0 16 16">
                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h
                    -.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007
                    1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
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
<div id="form-div">
    <aside id="order-form-aside">
        <img src="https://img.freepik.com/free-vector/privacy-
        policy-concept-illustration_114360-7478.jpg?w=2000" id="order-form-image">
    </aside>
    <article id="order-article">

        <form:form action="${pageContext.request.contextPath}/products/edit" modelAttribute="request" method="post">

            <div>
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
                     class="bi bi-clipboard2-data-fill icon-position" viewBox="0 0 16 16">
                    <path d="M10 .5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5.5.5 0 0 1-.5.5.5.5 0 0 0-.5.5V2a.5.5 0 0 0 .5.5h5A.5.5 0 0 0 11 2v-.5a.5.5 0 0 0-.5-.5.5.5 0 0 1-.5-.5Z"></path>
                    <path d="M4.085 1H3.5A1.5 1.5 0 0 0 2 2.5v12A1.5 1.5 0 0 0 3.5 16h9a1.5 1.5 0 0 0 1.5-1.5v-12A1.5 1.5 0 0 0 12.5 1h-.585c.055.156.085.325.085.5V2a1.5 1.5 0 0 1-1.5 1.5h-5A1.5 1.5 0 0 1 4 2v-.5c0-.175.03-.344.085-.5ZM10 7a1 1 0 1 1 2 0v5a1 1 0 1 1-2 0V7Zm-6 4a1 1 0 1 1 2 0v1a1 1 0 1 1-2 0v-1Zm4-3a1 1 0 0 1 1 1v3a1 1 0 1 1-2 0V9a1 1 0 0 1 1-1Z"></path>
                </svg>
                <h5 class="form-title"> product information :</h5>
            </div>
            <form:hidden path="id"/>

            <spring:bind path="title">
                <div class="mb-3 row">
                    <label for="title" class="col-sm-2 col-form-label input-label">Title</label>
                    <div class="col-sm-10">
                        <form:input path="title" type="text" value="${product.title}" placeholder="required"
                                    class="form-control order-input " id="title"/>
                    </div>
                </div>
            </spring:bind>


            <spring:bind path="brandName">
                <div class="mb-3 row">
                    <label for="brandName" class="col-sm-2 col-form-label input-label">Brand name</label>
                    <div class="col-sm-10">
                        <form:input path="brandName" type="date" value="${product.brandName}" placeholder=""
                                    class="form-control order-input" id="brandName"/>
                    </div>
                </div>
            </spring:bind>


            <spring:bind path="price">
                <div class="mb-3 row">
                    <label for="Price" class="col-sm-2 col-form-label input-label">Price</label>
                    <div class="col-sm-10">
                        <form:input path="price" type="text" value="${product.price}" placeholder="required"
                                    class="form-control order-input " id="Price"/>
                    </div>
                </div>
            </spring:bind>


            <spring:bind path="exist">
                <div class="mb-3 row">
                    <label class="col-sm-2 col-form-label input-label">Is Exist</label>
                    <div class="col-sm-10">
                        <form:select path="exist" class="form-select order-input"
                                     aria-label="Default select example selection-box ">
                            <form:option value="true" label="Yes"/>
                            <form:option value="false" label="No"/>
                        </form:select>
                    </div>
                </div>
            </spring:bind>


            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
                 class="bi bi-clipboard2-data-fill icon-position" viewBox="0 0 16 16">
                <path d="M10 .5a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5.5.5 0 0 1-.5.5.5.5 0 0 0-.5.5V2a.5.5 0 0 0 .5.5h5A.5.5 0 0 0 11 2v-.5a.5.5 0 0 0-.5-.5.5.5 0 0 1-.5-.5Z"></path>
                <path d="M4.085 1H3.5A1.5 1.5 0 0 0 2 2.5v12A1.5 1.5 0 0 0 3.5 16h9a1.5 1.5 0 0 0 1.5-1.5v-12A1.5 1.5 0 0 0 12.5 1h-.585c.055.156.085.325.085.5V2a1.5 1.5 0 0 1-1.5 1.5h-5A1.5 1.5 0 0 1 4 2v-.5c0-.175.03-.344.085-.5ZM10 7a1 1 0 1 1 2 0v5a1 1 0 1 1-2 0V7Zm-6 4a1 1 0 1 1 2 0v1a1 1 0 1 1-2 0v-1Zm4-3a1 1 0 0 1 1 1v3a1 1 0 1 1-2 0V9a1 1 0 0 1 1-1Z"></path>
            </svg>
            <h5 class="form-title"> Products feature :</h5>


            <div class="feature-div">

                <div class="feature-div-left">

                    <spring:bind path="color">
                        <div class="row g-3 align-items-center features-box">
                            <div class="col-auto">
                                <label for="Color" class="col-form-label feature-label">Color</label>
                            </div>
                            <div class="col-auto">
                                <form:input value="${product.feature.get('color')}" path="color" type="text" id="Color"
                                            placeholder="optional"
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
                                <form:input value="${product.feature.get('type')}" path="type" type="text" id="Type"
                                            placeholder="optional"
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
                                <form:input value="${product.feature.get('size')}" path="size" type="text" id="Size"
                                            placeholder="optional"
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
                                <form:input value="${product.feature.get('weight')}" path="weight" type="text"
                                            id="Weight" placeholder="optional"
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
                                <form:input value="${product.feature.get('subject')}" path="subject" type="text"
                                            id="Subject" placeholder="optional"
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
                                <form:input value="${product.feature.get('energy')}" path="energy" type="text"
                                            id="Energy" placeholder="optional"
                                            class="form-control feature-input" style="width: 160px"/>
                            </div>
                        </div>
                    </spring:bind>
                </div>
            </div>

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
