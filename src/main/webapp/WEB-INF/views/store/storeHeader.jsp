<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-3.6.0.js"></script>

    <style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
    html>body {
        font-family: 'Noto Sans KR', sans-serif;
    }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="resources/css/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" href="resources/css/header7.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <style>
   
<style>
	 @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
    html>body {
        font-family: 'Noto Sans KR', sans-serif;
    }
	.header-wrap{
    		width: 100%;
    		height: 60px;
    		display: flex;
    		justify-content: space-between;
    		border-bottom: 1px solid #ddd;
    	}
    	.header-left{
    		display: flex;
    		align-items: center;
    		padding-left: 30px;
    	}
    	.header-left:hover{
    		cursor: pointer;
    	}
    	.header-left>img{
    		height: 50px;
    	}
    	.header-left>h4{
    		padding-left: 5px;
    		font-style: italic;
    	}
    	.header-center{
    		display: flex;
    		align-items: center;
    		margin-left: -200px;
    	}
    	.header-center>span{
    		color: #aaa;
    	}
    	.header-center>h4{
    		padding-left: 5px;
    		font-weight: 400;
    	}
    	.header-right{
    		display: flex;
    		align-items: center;
    		padding-right: 30px;
    	}
    	.header-right>a{
    		color: #aaa;
    	}
    	.creStore-wrap{
    		display: flex;
    	}
    	.creStore-nav{
    		width: 220px;
    	}
    	crestore-content{
    		width:980px;
    	}
    	.crestore-content{
    		padding-top: 60px;
    		padding-left: 75px;
    		position: relative;
    	}
    	.crestore-content>h6{
    		font-weight: 400;
    		color: #777;
    		padding-top: 10px;
    		padding-bottom: 30px;
    	}
    	.crestore-content>.category{
    		position: absolute;
    		top: 15px;
    		font-size: 12px;
    	}
    	.crestore-content>.category>b{
    		padding-left: 5px;
    		font-size: 13px;
    	}
    	body p{
    		font-family: 'Noto Sans KR', sans-serif;
    	}
    	.save-btn{
    		width: 350px;
    		height: 50px;
    		background-color: rgb(0, 178, 178);
    		border: none;
    	}
</style>
</head>
<body>
	<div class="header-wrap" id="header">
		<div class="header-left">
			<img src="/resources/image/파이널로고1.png">
			<h4>FUNFUNFUN</h4>
		</div>
		<div class="header-center">
			<span class="material-symbols-outlined">shopping_bag</span>
			<span>나의 FUN(뻔)한</span>
			<h4>${tmp.memberId }</h4>
			<span>의&nbsp;Store</span>
		</div>
		<div class="header-right">
			<a href="/">나가기</a>
		</div>
	</div>
	
	<script>
	$(".header-left").click(function(){
		location.href='/storeReadyFrm.do?stNo='+${tmp.stNo};
	})
	</script>
	

</body>
</html>