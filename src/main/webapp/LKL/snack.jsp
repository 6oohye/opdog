<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Snack</title>
</head>
<body>
	<!-- ��� -->
	<header></header>
	
	<!-- ���� -->
	
	<div class="���� ī�װ�">
	
		<a class="�м� ī�װ� ��ũ" onclick="location.href='FashionC'">
			<div class="�м� ī�װ�">
				<div class="�м� ī�װ� �����">
					<img alt="" src="https://shop-phinf.pstatic.net/20220704_292/16569175721794ENar_PNG/icon_14.png">
				</div>
				<div class="�м� ī�װ� �ؽ�Ʈ">fashion</div>
			</div>
		</a>
		
		<a class="��� ī�װ� ��ũ" onclick="location.href='FeedC'">
			<div class="��� ī�װ�">
				<div class="��� ī�װ� �����">
					<img alt="" src="https://shop-phinf.pstatic.net/20230119_57/1674087418600eO0eX_PNG/icon_04.png">
				</div>
				<div class="��� ī�װ� �ؽ�Ʈ">feed</div>
			</div>
		</a>
		
		<a class="��� ī�װ� ��ũ" onclick="location.href='SnackC'">
		<div class="���� ī�װ�">
			<div class="���� ī�װ� �����">
				<img alt="" src="https://shop-phinf.pstatic.net/20220616_30/1655365227214qAvGJ_PNG/icon_05.png">
			</div>
			<div class="���� ī�װ� �ؽ�Ʈ">snack</div>
		</div>
		</a>
		
		<a class="��� ī�װ� ��ũ" onclick="location.href='ToyC'">
		<div class="�峭�� ī�װ�">
			<div class="�峭�� ī�װ� �����">
				<img alt="" src="https://shop-phinf.pstatic.net/20220616_176/1655365272658tuiIW_PNG/icon_13.png">
			</div>
			<div class="�峭�� ī�װ� �ؽ�Ʈ">toy</div>
		</div>
		</a>
		
		
	</div>

	<div class="�����۵�">
		<c:forEach  varStatus="" var="s" items="${snacks }">
		<div class="������">	
			<div class="������ �����">
		    	<img class="����� �̹���" src="${s.s_img }" >
			</div>
	    	<div class="������ ����">	
    			<div class="������ ����">${s.s_title }</div>
    			<div class="������ ����">${s.s_price } &#8361;</div>
    			<div class="������ �귣��">${s.s_brand }</div>
    		</div>
    	</div>	
		</c:forEach>
	</div>
	<hr>
	
	<!-- ������ ó�� -->
	<a href="SnackPageC?p=1">[��ó��]</a>
	<c:choose>
		<c:when test="${curPageNo != 1 }">
		<a href = "SnackPageC?p=${curPageNo -1 }"><button>��</button></a>
		</c:when>
			<c:otherwise>
				<button class="������ư">��</button>
			</c:otherwise>
	</c:choose>
	
	<c:forEach begin="1" end="${pageCount }" var = "n">
			<a href = "SnackPageC?p=${n }"> [${n }] </a>
	</c:forEach>
	
	<c:choose>
		<c:when test="${pageCount != curPageNo }">
		<a href = "SnackPageC?p=${curPageNo +1 }"><button>��</button></a>
		</c:when>
			<c:otherwise>
				<button class="������ư">��</button>
			</c:otherwise>
	</c:choose>
	<a href="SnackPageC?p=${pageCount }">[�ǳ�]</a>
	
	
	<!-- Ǫ�� -->
	<footer>
	</footer>
	
</body>
</html>