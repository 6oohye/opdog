<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
	<!-- ��� -->
	<header></header>
	
	<!-- ���� -->
	
	<div class="���� ī�װ�">
		<div class="�м� ī�װ�">
			<div class="�м� ī�װ� �����">
				<img alt="" src="">
			</div>
			<div class="�м� ī�װ� �ؽ�Ʈ">fashion</div>
		</div>
		<div class="��� ī�װ�">
			<div class="��� ī�װ� �����">
				<img alt="" src="">
			</div>
			<div class="��� ī�װ� �ؽ�Ʈ">feed</div>
		</div>
		<div class="���� ī�װ�">
			<div class="���� ī�װ� �����">
				<img alt="" src="">
			</div>
			<div class="���� ī�װ� �ؽ�Ʈ">snack</div>
		</div>
		<div class="�峭�� ī�װ�">
			<div class="�峭�� ī�װ� �����">
				<img alt="" src="">
			</div>
			<div class="�峭�� ī�װ� �ؽ�Ʈ">toy</div>
		</div>
	</div>
	
	
	
	<div class="�����۵�">
		<c:forEach  varStatus="" var="fs" items="${fashions }">
		<div class="������">	
			<div class="������ �����">
		    	<img class="����� �̹���" src="${fs.fs_img }" >
			</div>
	    	<div class="������ ����">	
    			<div class="������ ����">${fs.fs_title }</div>
    			<div class="������ ����">${fs.fs_price }</div>
    			<div class="������ �귣��">${fs.fs_brand }</div>
    		</div>
    	</div>	
		</c:forEach>
	</div>
	
	<!-- Ǫ�� -->
	<footer>
	</footer>
</body>
</html>