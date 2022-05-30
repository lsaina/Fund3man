<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">
<style>
.content-wrap{
    overflow: hidden;
    width: 1200px;
    border-top: 1px solid #bfbfbf;
    font-family: ns-medium;
    border-top: 1px solid #bfbfbf;
    margin: 0 auto;
}
.left-content{
    float: left;
    width: 15%;
}
.main-content{
    float: left;
    width: 85%;
    padding: 80px;
    padding-top: 85px;
    font-size: 13px;
}
.left-content>.title{
    text-align: center;
    font-size: 30px;
    padding: 20px;
}
   .manager-menu{
        list-style-type: none;
        margin: 0;
        padding: 0;
        border: 1px solid lightgray;
    }
    .manager-menu>li{
        text-align: center;
        height: 50px;
        line-height: 50px;
        font-size: 15px;
        color: gray;
        
    }
    .manager-menu>li>a{
        display: block;
        text-decoration: none;
        color: #212529;
        background-color:#f2f4f6;
        text-align: center;
        height: 50px;
        line-height: 50px;
        font-size: 15px;
    }
    .manager-menu>li>a:hover{
        color: #e7f9f9;
        cursor: pointer;
        background-color: #00b2b2;
    }
    .manager-menu .active-menu{
        color: #00b2b2;
        font-weight: bold;
    }
.content-wrap .btn{
    font-size: 13px;
    margin: 5px;
}

.content-wrap .btn-primary{
    color: whitesmoke ;
    background-color: #02c9c9;
    border: 1px solid #02c9c9;
    margin: 0;
    margin-bottom: 5px;
    width: 85px;
    height: 30px;
    line-height: 13px;
    font-size: 13px;
    border-radius: 5px;
}
.content-wrap .btn-primary:hover{
    background-color: #00b2b2;
    border: 1px solid white;
    border: 1px solid #00b2b2;
}
.sub-menu{
    width: 430px;
    margin: auto;
    margin-bottom: 50px;
}
.sub-menu>*{
    width: 200px;
    font-size: 20px;
}
.sub-menu a{
	text-decoration:none;
	color: whitesmoke ;
}

.top-search{
    width: 435px;
    margin: 0 auto;
}
.top-search ul{
    list-style-type: none;
    border: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    height: 60px;
    line-height: 60px;
}
.top-search li{
    float: left;
    margin: 10px;
    line-height: 40px;
}
.top-search li>*:not(.material-icons){
    height: 30px;
    font-size: 13px;
}
.search-btn{
    width: 60px;
    line-height: 25px;
    border-radius: 5px;
    border: 1px solid #868e96;
}
.search-btn:hover{
    cursor: pointer;
    font-size: 1.1em;
}
input[name='keyword']{
    width: 300px;
    border: none;
    border-bottom: 1px solid #868e96;
    outline: none;
}
.table{
    margin-top: 50px;
}
.table>*{
    text-align: center;
}
.table select{
	 font-size: 13px;
	 padding: 3px;
}
.main-content .table td:last-child{
	width: 200px;
}
.main-content .table td{
    line-height: 30px;
    height: 30px;
}
#reportManage{
	background-color: #e7f9f9;
	border:none;
	border: 1px solid  #e7f9f9;
}
#reportManage>*{
	color: #60656a;
}
#sellerManage{
	color:#00b2b2;
    border: 2px solid #00b2b2;
    font-weight: bold;
    margin:0;
    margin-bottom: 5px;
}
#sellerManage:hover{
	cursor: default;
}
.type{
	overflow: hidden;
	margin-bottom: 30px;
	margin-top: 30px;
}
.type>select{
	width: 100px;
	height: 30px;
	float: right;
}
select{
	border: 1px solid #bfbfbf;
}
.nodata{
	text-align: center;
}
.table a{
	color: black;
	text-decoration: none;
}
.pagination{
	justify-content:center;
	margin: 0 auto;
	padding-top: 50px;
}
.pagination>.page-item>a {
	color: #00b2b2;
}

.pagination>.page-item.active>a {
	background-color: #00b2b2;
	border: 1px solid #00b2b2;
}
#reportManage>a{
	display:block;
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
	 <div class="content-wrap">
        <div class="left-content">
            <div class="title">회원관리</div>
            <div class="menu-wrap">
                <ul class="manager-menu">
                    <li>관리자페이지</li>
                    <li><a href="/fundManage.do?reqPage=1&keyword=&type=all">펀딩관리</a></li>
                    <li><a href="/storeManage.do?reqPage=1&keyword=&type=all">스토어관리</a></li>
                    <li><a href="/memberManage.do?reqPage=1&keyword=&type=all" class="active-menu">회원관리</a></li>
                    <li><a href="/couponManage.do?reqPage=1&keyword=&type=3">쿠폰관리</a></li>
                </ul>
            </div>
        </div>
        <div class="main-content">
            <div class="sub-menu">
                
                <button type="button" class="btn" id="sellerManage">회원 신고 관리</button>
                <button type="button" class="btn" id="reportManage"><a href="/sellerManage.do?keyword=&type=3">판매자 승인 관리</a></button>
            </div>
            <div class="top-search">
                <ul>
                    <li style="line-height: 80px; margin: 0;">
                        <span class="material-icons" style="font-size: 30px; height: 20px;" >search</span>
                    </li>
                    <li>
                        <input type="text" name="keyword" id="keyword" placeholder="아이디를 입력해주세요">
                    </li>
                    <li>
                        <input type="submit" class="search-btn" value="검색"></input>
                    </li>
                </ul>
            </div>
            <div class="type">
            	<select class="changeType">
            		<option value="all">전체</option>
            		<option value="report">신고</option>
            	</select>
            </div>
            
            <c:choose>
            	<c:when test="${empty list }">
            		 <div class="nodata"><h6>조회 결과가 없습니다.</h6></div>
            	</c:when>
            	<c:otherwise>
            		<div class="seller-table">
		            	<table class="table table-hover">
		                    <thead>
		                        <tr>
		                            <th>아이디</th>
		                            <th>이름</th>
		                            <th>신고상태</th>
		                            <th>경고수</th>
		                            <th>권한</th>
		                            <th colspan="2"></th>
		                        </tr>
		                    </thead>
		                    
		                    <tbody class="tbody">
		                    
		                     
		                    	<c:forEach items="${list }" var="mem">
		                    		<tr>
			                            <td class="memberId">${mem.memberId }</td>
			                            <td>${mem.memberName }</td>
			                            <td>
			                            	<c:choose>
			                            		<c:when test="${mem.report > 0}">
			                            			신고
			                            		</c:when>
			                            		<c:otherwise>
			                            			정상
			                            		</c:otherwise>
			                            	</c:choose>
											
										</td>
										<td>경고수</td>
			                            <td>
			                            	<input type="hidden" class="authRe" value=${mem.authRe }>
			                                <select name="authChange" id="authChange">
			                                	<option value="0">정상</option>
			                                    <option value="1">로그인불가</option>
			                                </select>
			                            </td>
			                            <td>
			                                <button type="button" class="btn btn-primary authChange">권한수정</button>
			                                <button type="button" class="btn btn-primary detail">상세보기</button>
			                                <input type="hidden" value="${mem.memberId }" >
			                                <input type="hidden" >
			                            </td>
		                        	</tr>
		                    	</c:forEach>
		                    	
		                    	
		                    </tbody>
		                    
		                </table> 
		                ${pageNavi}
           	 		</div>
            	</c:otherwise>
            </c:choose>
           
            
        </div>
    </div>
  	<input type="hidden" class="information" optionType="${type }" keyword="${keyword }" reqPage="${reqPage }">


<script>
//기존값들
const keyword=$(".information").attr("keyword");
const type=$(".information").attr("optionType");
const reqPage = $(".information").attr("reqPage");

//키워드 셋팅
if(keyword != ""){
	$("#keyword").val(keyword);
}

//옵션셋팅(전체,신고)
const changeType = $(".changeType");
changeType.val(type);

//검색버튼 클릭시
$(".search-btn").on("click",function(){
	const value = $("#keyword").val();
	location.href="/memberManage.do?reqPage="+reqPage+"&keyword="+value+"&type="+type;
});

//옵션 변경시 적용(전체,미승인,승인,심사전)
changeType.on("change",function(){
	const change = $(this).val();
	location.href="/memberManage.do?reqPage="+reqPage+"&keyword="+keyword+"&type="+change;
});

//상세보기버튼
$(".detail").on("click",function(){
	const memberId = $(this).next().val();
	location.href="/memberReportDetail.do?memberId="+memberId;
});

</script>

</body>
</html>