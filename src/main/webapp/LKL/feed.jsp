<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="item-container">
		<c:forEach  varStatus="" var="f" items="${feeds }">
			${fs }
			
		    <img class="item-image" src="${f.f_img }" alt="������ �̹���">
    		
    		<div class="item-title">${f.f_title }</div>
    		
    		<div class="item-price">${f.f_price }</div>
    		<div class="item-brand">${f.f_brand }</div>
    		<button onclick="addToCart()">��ٱ��Ͽ� �߰�</button>
		</c:forEach>
	</div>

</body>
</html>