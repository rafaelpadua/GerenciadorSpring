<%-- 
    Document   : home
    Created on : 29/11/2013, 00:10:41
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../layout/imports.jsp" %>
    </head>
    <body>
        <header id="header">
            <%@include file="../layout/menu.jsp" %>
            <div id="myCarousel" class="carousel slide">
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="active item">
                        <img src="${pageContext.request.contextPath}/resources/img/igreja1.jpg"  style="alignment-adjust: central"/>
                    </div>
                    <div class="item">
                        <img src="${pageContext.request.contextPath}/resources/img/igreja4.jpg" />
                    </div>
                </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
            </div>
            <%@include file="../layout/footer.jsp" %>
        </header>

    </body>
</html>
