<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
            <a class="nav-link active" href="${pageContext.request.contextPath}/orders/myOrder">My orders</a>
        </li>
        <li class="nav-item" style="padding: 0 20px 0">
            <a class="nav-link" href="${pageContext.request.contextPath}/products/mySale">My sales</a>
        </li>
    </ul>
</nav>
<div id="order-form-div">

    <aside id="order-form-aside">

        <img src="https://img.freepik.com/premium-vector/online-survey-business-concept-with-tiny-people-internet-questionnaire-form-man-fills-out
        -giant-clipboard-checklist-check-mark-ticks-flat-vector-illustration_202007-260.jpg?w=2000"
             id="order-form-image">
    </aside>
    <article id="order-article">

        <form:form action="/orders" method="post" modelAttribute="request">

            <div>
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
                     class="bi bi-file-earmark-person-fill icon-position" viewBox="0 0 16 16">
                    <path d="M9.293 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.707A1 1 0
        0 0 13.707 4L10 .293A1 1 0 0 0 9.293 0zM9.5 3.5v-2l3 3h-2a1 1 0 0 1-1-1zM11 8a3 3
        0 1 1-6 0 3 3 0 0 1 6 0zm2 5.755V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-.245S4 12 8 12s5 1.755 5 1.755z"></path>
                </svg>
                <h5 class="form-title"> your information :</h5>
            </div>

            <form:hidden path="productId"/>

            <spring:bind path="firstname">

                <div class="mb-3 row">
                    <label for="firstname" class="col-sm-2 col-form-label input-label">Firstname</label>
                    <div class="col-sm-10">
                        <form:input path="firstname" type="text" placeholder="required"
                                    class="form-control order-input "
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

            <div>
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
                     class="bi bi-file-earmark-person-fill icon-position" viewBox="0 0 16 16">
                    <path d="M9.293 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.707A1 1 0
        0 0 13.707 4L10 .293A1 1 0 0 0 9.293 0zM9.5 3.5v-2l3 3h-2a1 1 0 0 1-1-1zM11 8a3 3
        0 1 1-6 0 3 3 0 0 1 6 0zm2 5.755V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-.245S4 12 8 12s5 1.755 5 1.755z"></path>
                </svg>
                <h5 class="form-title"> product information :</h5>
            </div>

            <spring:bind path="quantity">
                <div class="mb-3 row">
                    <label for="quantity" class="col-sm-2 col-form-label input-label">Quantity</label>
                    <div class="col-sm-10">
                        <form:input path="quantity" type="text" placeholder="required" class="form-control order-input "
                                    id="quantity"/>
                    </div>
                </div>
            </spring:bind>


            <spring:bind path="deliverDate">
                <div class="mb-3 row">
                    <label for="deliverDate" class="col-sm-2 col-form-label input-label">DeliverDate</label>
                    <div class="col-sm-10">
                        <form:input path="deliverDate" type="date" placeholder="" class="form-control order-input "
                                    id="deliverDate"/>
                    </div>
                </div>
            </spring:bind>

            <div>
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
                     class="bi bi-file-earmark-person-fill icon-position" viewBox="0 0 16 16">
                    <path d="M9.293 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.707A1 1 0
        0 0 13.707 4L10 .293A1 1 0 0 0 9.293 0zM9.5 3.5v-2l3 3h-2a1 1 0 0 1-1-1zM11 8a3 3
        0 1 1-6 0 3 3 0 0 1 6 0zm2 5.755V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-.245S4 12 8 12s5 1.755 5 1.755z"></path>
                </svg>
                <h5 class="form-title"> your address :</h5>
            </div>

            <spring:bind path="mobileNumber">
                <div class="mb-3 row">
                    <label for="mobilNumber" class="col-sm-2 col-form-label input-label">MobilNumber</label>
                    <div class="col-sm-10">
                        <form:input path="mobileNumber" type="text" placeholder="required"
                                    class="form-control order-input " id="mobilNumber"/>
                    </div>
                </div>
            </spring:bind>

            <spring:bind path="email">
                <div class="mb-3 row">
                    <label for="email" class="col-sm-2 col-form-label input-label">Email</label>
                    <div class="col-sm-10">
                        <form:input path="email" type="email" placeholder="email@example.com(required)"
                                    class="form-control order-input " id="email"/>
                    </div>
                </div>
            </spring:bind>


            <spring:bind path="city">
                <div class="mb-3 row">
                    <label for="city" class="col-sm-2 col-form-label input-label">City</label>
                    <div class="col-sm-10">
                        <form:input path="city" type="text" placeholder="your city (required)"
                                    class="form-control order-input " id="city"/>
                    </div>
                </div>
            </spring:bind>


            <spring:bind path="street">
                <div class="mb-3 row">
                    <label for="street" class="col-sm-2 col-form-label input-label">Street</label>
                    <div class="col-sm-10">
                        <form:input path="street" type="text" placeholder="your streets (required)"
                                    class="form-control order-input " id="street"/>
                    </div>
                </div>
            </spring:bind>

            <spring:bind path="allay">
                <div class="mb-3 row">
                    <label for="ally" class="col-sm-2 col-form-label input-label">Ally</label>
                    <div class="col-sm-10">
                        <form:input path="allay" type="text" placeholder="your allys (required)"
                                    class="form-control order-input " id="ally"/>
                    </div>
                </div>
            </spring:bind>

            <spring:bind path="houseNumber">
                <div class="mb-3 row">
                    <label for="houseNumber" class="col-sm-2 col-form-label input-label">HouseNumber</label>
                    <div class="col-sm-10">
                        <form:input path="houseNumber" type="number" placeholder="your houseNumber (required)"
                                    class="form-control order-input " id="houseNumber"/>
                    </div>
                </div>
            </spring:bind>

            <spring:bind path="houseNumber">

                <div class="mb-3 row">
                    <label for="postalCode" class="col-sm-2 col-form-label input-label">PostalCode</label>
                    <div class="col-sm-10">
                        <form:input path="postalCode" type="text" placeholder="your postalCode (required)"
                                    class="form-control order-input " id="postalCode"/>
                    </div>
                </div>
            </spring:bind>

            <div class="buying-button-position">
                <button type="submit" class="btn btn-danger buying-button-style order-form-button">Submit
                    information
                </button>
            </div>
        </form:form>
    </article>
</div>

<script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>

