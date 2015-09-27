<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapMin" />
    <link rel="stylesheet" href="${bootstrapMin}"/>
</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Spring MVC DEMO, hello from ITISSUE</a>
        </div>
    </div>
</nav>
<div class="jumbotron">
    <div class="container">
        <h1>${title}</h1>
        <p>
            <c:if test="${not empty name}">
                Welcome ${name}
            </c:if>

            <c:if test="${empty name}">
                Welcome %username%
            </c:if>
        </p>
        <p>
            <a class="btn btn-primary btn-lg" href="#" role="button">More info</a>
        </p>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad at dolorem nemo non qui voluptate?</p>
                    <p> <a href="#" class="btn btn-default" role="button">more..</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores ex iusto porro, quisquam recusandae sint.</p>
                    <p> <a href="#" class="btn btn-default" role="button">more..</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dolor ipsum iure possimus quo soluta.</p>
                    <p> <a href="#" class="btn btn-default" role="button">more..</a></p>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p>© itissue.blogspot.com 2015</p>
    </footer>
</div>

<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>