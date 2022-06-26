<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
		  <div class="container-fluid">
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		      	<li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		          	Brand
		          </a>
		          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
		            <li><a class="dropdown-item" href="#">브랜드 소개</a></li>
		            <li><a class="dropdown-item" href="#">매장 위치</a></li>
		          </ul>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#">공지사항</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="${pageContext.request.contextPath }/home.do?item_type=cookie">쿠키</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="${pageContext.request.contextPath }/home.do?item_type=beverage">음료</a>
		        </li>
		        <!-- 
		        	<li class="nav-item dropdown">
			          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			          	음료
			          </a>
			          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			            <li><a class="dropdown-item" href="#">커피</a></li>
			            <br />
			            <li><a class="dropdown-item" href="#">에이드</a></li>
			          </ul>
			        </li>
		         -->
		        <li class="nav-item">
		          <a class="nav-link" href="#">Event</a>
		        </li>
		      </ul>
		      <!-- 
		      <form class="d-flex" role="search">
		        <input class="form-control me-2" type="search" placeholder="검색어 입력..." aria-label="Search">
		        <button class="btn btn-outline-success" type="submit">search</button>
		      </form>
		      -->
		    </div>
		  </div>
		</nav>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!-- 로그인 및 마이페이지 검색 navbar  -->
<nav class="navbar navbar-expand-md navbar-light fixed-top bg-white">
	<div class="container-fluid">
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav ms-auto mb-2 mb-md-0">
				<c:choose>
        			<c:when test="${ empty sessionScope.id}">
                		<li class="nav-item">
            				<a class="nav-link" href="${pageContext.request.contextPath}/users/loginform.do">로그인 </a>
          				</li>
          				<li class="nav-item">
           			 		<a class="nav-link" href="${pageContext.request.contextPath}/users/signupform.do">회원가입</a>
          				</li>
          			</c:when>
				<c:otherwise>
          			<li>
          				<a href="${pageContext.request.contextPath}/users/logout.do" class="nav-link">로그아웃</a>
					</li>
          		</c:otherwise>
				</c:choose>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath }/orderinquiry/orderinquiry.do?id=${id }" >
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
								<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
							</svg>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath }/basket/basketList.do">
							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16">
								<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
							</svg>
           				</a>
          			</li>
          	 		<!-- <li class="nav-item">
           			 <a class="nav-link" href="#">
           			 	<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  						<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/> 
						</svg>
					</a> 
					</li> -->
				</ul>	
		</div>
	</div> 
 </nav>
 
  