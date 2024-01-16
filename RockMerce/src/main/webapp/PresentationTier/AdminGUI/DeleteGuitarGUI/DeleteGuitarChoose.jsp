<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="LogicTier.Entità.Guitar" %>

<html>
<head>
    <title>DELETE GUITAR-RockMerce</title>
    <%@include file="/menu/AdminMenu.jsp" %>
    <link rel="stylesheet" type="text/css" href="./Styles/ShopStyle.css">
</head>


<style>

    #Shop{
        background: #1C889E;
        color: white;
        opacity: 1;
    }

    #Shop a{
        color:white;
    }



</style>


<body>


</form>


<ul>
        <c:forEach items="${guitars}" var="guitar">
            <li id="Item">

                    <form action="DeleteGuitarControl" method="post">
                    <div class="BoatShip">
                        <button id="backCard">
                        <input type="hidden" name="guitarId" value="${guitar.id}">
                        <div class="card">
                            <div class="inside">
                                <h2>${guitar.producer}</h2>
                            </div>

                            <div id="img">
                                <img id="gImg" src="${guitar.image}">
                            </div>

                            <div class="inside">
                                <h3>${guitar.name}</h3>
                            </div>

                            <div class="inside">
                                <p class="gPrice">€ ${guitar.price}0</p>
                            </div>
                        </div>
                        </button>
                    </div>

                     <button  class="InsideButton">DELETE</button>

                </form>
            </li>
       </c:forEach>
</ul>




</body>
</html>
