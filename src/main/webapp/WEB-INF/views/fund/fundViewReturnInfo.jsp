<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩 반환정책</title>
    <!--jquery-->
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
    <!--구글폰트-->
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
    html>body {
        font-family: 'Noto Sans KR', sans-serif;
    }
    </style>
    <!--부트스트랩-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/header7.css"> 
    <!--구글 아이콘-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
.banner{
    height: 200px;
}
.banner-img{
    height: 200px;
    width: 100%;
    position: absolute;
    background-color: gray;
    -webkit-filter: brightness(80%);

}
.banner-img>img{
    height: 200px;
    width: 100%;
    -webkit-filter: blur(5px);
    object-fit:cover;
}

.title-category{
    position: relative;
    height: 28px;
    line-height: 28px;
    text-align: center;
    color: #5cdede;
    font-weight: 500;
    padding-top: 50px;
    padding-bottom: 30px;
}
.title{
    position: relative;
    padding-right: 30px;
    padding-left: 30px;
    text-align: center;
    color: #fff;
    font-size: 30px;
    font-weight: 500;
}
.funding-navi{
    height: 60px;
    display: flex;
    width: 390px;
    margin: 0 auto;
}
.funding-navi>a{
    text-decoration: none;
    padding: 20px;
    font-weight: 500;
    color: #60656a;
}
.funding-navi>a:hover{
    color: #00b2b2;
}
.funding-navi>a:nth-child(2){
    border-bottom: 3px solid #00c4c4;
}
.funding-navi>a:nth-child(2){
    color: #00b2b2;
}
.space-bar{
    width: 100%;
    border-top: 2px solid #b9b9b9;
}






.detail-container{
    display: flex;
    padding-top: 40px;
    margin: 0 auto;
    width: 1000px;
    height: 1000px;
}
.return{
    font-weight: 700;
    font-size: 24px;
}
.detail-view{
    width: 630px;
    height: 1000px;
}
.space{
    width: 60px;
    height: 1000px;
}
.detail-reward{
    width: 310px;
    height: 1000px;
}

.return-content{
    color: #4a4a4a;
    font-weight: 600;
    font-size: 18px;
    margin-top: 30px;
}
.detail-fix, .detail-active{
    margin-top: 10px;
    color: #60656a;
    font-size: 14px;
    line-height: 18px;
    font-weight: 500;
    padding-bottom: 20px;
}
.detail-fix>a{
    color: #00c4c4;
    font-weight: 500;
    text-decoration:underline;
}
.detail-fix>span{
    color: #969696;
}



.remaining-day{
    font-size: 30px;
    line-height: 36px;
    font-weight: 600;
    color: #4a4a4a;
}
.rate-bar{
    width: 100%;
    margin-bottom: 20px;
    border-top: 4px solid #00b2b2;
}
.project-status span{
    font-size: 15px;
    color: #4a4a4a;
    line-height: 50px;
}
.project-status span strong{
    font-size: 24px;
}
.funding-linkwrap{
    width: 100%;
    text-align: center;
    text-decoration: none;
}
.funding-link{
    margin-top: 10px;
    font-size: 22px;
    color: #ffffff;
    border-radius: 5px;
    line-height: 55px;
    height: 55px;
    background-color: #00c4c4;
    width: 100%;
    
}
.funding-link:hover{
    transition: 0.5s;
    background-color: #00b2b2;
    color: #dadce0;
}
.btn-box{
    display: flex;
}
.like-btn,.report-btn{
    display: flex;
    background-color: #ffffff;
    border: 1px solid #dadce0;
    color: #4a4a4a;
    height: 45px;
    border-radius: 0;
    justify-content: center;
}
.like-btn:hover,.report-btn:hover{
    transition: 0.5s;
    background-color: #dbdbdb;
    border: 1px solid white;
}
.like-btn{
    width: 105px;
}
.like-btn .material-icons, .report-btn .material-icons{
    font-size: 20px;
}
.report-btn{
    width: 200px;
    float: right;
    margin-left: 5px;
}
.like-btn span, .report-btn span{
    line-height: 45px;
}
.like-btn>.btn-value, .report-btn>.btn-value{
    font-size: 16px;
}
.like-btn .material-icons{
    color: #00c4c4;
}
.seller-info{
    margin-top: 30px;
    margin-bottom: 5px;
    font-weight: 500;
    font-size: 14px;
    color: #495057;
}
.seller-wrap{
    background-color: #ffffff;
    border: 1px solid #dadce0;
    color: #4a4a4a;
    border-radius: 15px;
}
.seller-detail{
    display: flex;
    justify-content: left;
    padding-left: 25px;
}
.seller-profile{
    width: 50px;
    font-size: 40px;
    padding-top: 15px;
}
.seller-name{
    padding-top: 25px;
    font-weight: 600;
}
.seller-intro{
    padding-left:75px;
    padding-right: 30px;
    font-size: 14px;
}
.seller-dm{
    margin: 0 auto;
    margin-top: 5px;
    margin-bottom: 10px;
    padding: 3px 0;
    width: 200px;
    border-radius: 20px;
    display: flex;
    background-color: #ffffff;
    justify-content: center;
    border: 1px solid #dadce0;
    color: #60656a;
    font-size:15px;
}
/*
.seller-dm:hover{
    background-color: #dadce0;
    border: 1px solid #ffffff;
    transition: 0.5s;
}*/
.reward-info{
    margin-top: 30px;
    margin-bottom: 5px;
    font-weight: 500;
    font-size: 14px;
    color: #495057;
}

.reward-linkwrap{
    text-decoration: none;
}
.reward-wrap:hover{
    background-color: #d4f8f8;
    transition: 0.5s;
}

.reward-wrap{
    background-color: #ffffff;
    border: 1px solid #dadce0;
    color: #4a4a4a;
    padding: 20px 20px;
    margin-bottom: 10px;
}
.reward-price{
    font-weight: 600;
    margin-bottom: 10px;
}
.reward-name{
    font-weight: 600;
    color: #60656a;
    font-size: 15px;
    margin-bottom: 10px;
}
.reward-intro{
    font-size: 13px;
    color: #969696;
    font-weight: 500;
    margin-bottom: 20px;
}
.reward-fix{
    font-size: 13px;
    color: #969696;
    font-weight: 500;
}
.reward-active{
    font-size: 13px;
    color: #60656a;
    font-weight: 500;
    margin-bottom: 10px;
}
.reward-count{
    padding-top: 20px;
    display: flex;
    color: #00c4c4;
    font-size: 13px;
    font-weight: 600;
}
.reward-remaining{
    margin-left: 10px;
    background-color: #d4f8f8;
}

.mypage{
	background-color:white;
	border:none;
	color:#00c4c4;
	font-weight:600;
	text-decoration:underline;
}
.mypage:hover{
	color:#039393;
}

.popup-wrap{
    background-color:rgba(0,0,0,.3); 
    justify-content:center; 
    align-items:center;     
    position:fixed;         
    top:0;
    left:0;
    right:0;
    bottom:0;               
    display:none; 
    padding:15px; 
}
.popup{
    width:100%;               
    max-width:400px;          
    border-radius:10px;       
    overflow:hidden;          
    background-color:#00b2b2;
    box-shadow: 5px 10px 10px 1px rgba(0,0,0,.3); 
}
.popup-head{
    width:100%;
    height:50px;  
    align-items:center;
    justify-content:center;
    padding-right: 20px;
    font-size: 30px;
}
.popup-head>.pop-btn{
justify-content: right;
}
.popup-body{                
    width:100%;
    background-color:#ffffff; 
}
.body-content{              
    width:100%;
    padding:30px;             
}
.body-titlebox{             
    text-align:center;        
    width:100%;
    height:50px;
    margin-bottom:10px;       
}
.body-titlebox span{
    font-size: 20px;
    font-weight: 500;
}
.body-contentbox{ 
    margin-top: 20px;
    border-top: 3px solid #00b2b2;          
    word-break:break-word;    
    overflow-y:auto;          
    min-height:100px;         
    max-height:400px;         
}
.body-contentbox span{
    margin-top: 20px;
    font-size: 14px;
}
.popup-foot{                      
    width:100%;
    height:50px;
}
.pop-btn{ 
    display:inline-flex;          
    width:100%;                      
    height:100%;                    
    justify-content:center;         
    align-items:center;             
    float:left;                     
    color:#ffffff;                 
    cursor:pointer;                 
}
.pop-btn.confirm{                 
    border-right:1px solid #3b5fbf; 
}
/*신고하기*/
.report-foot{                      
    width:100%;
    height:50px;
}
.reprort-titlebox{             
    text-align:center;        
    width:100%;
    height:30px;
}
.report-titlebox span{
    font-size: 20px;
    font-weight: 500;
}
.report-modal{ 
    display:inline-flex;          
    width:50%;                      
    height:100%;                    
    justify-content:center;         
    align-items:center;             
    float:left;                     
    color:#ffffff;                 
    cursor:pointer;                 
}
.report-contentbox{ 
    border-top: 3px solid #00b2b2;          
    word-break:break-word;    
    overflow-y:auto;          
    min-height:100px;         
    max-height:400px;         
}
.body-contentbox span{
    margin-top: 20px;
    font-size: 14px;
}


.report{                 
    border-right:2px solid #fefefe; 
}
.disabled {
    opacity: 0.6;
    cursor: not-allowed;
}


</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
    <div class="banner bgBlur">
        <div class="banner-img">
            <img src="/resources/image/fund/upload/${f.fundFilepath1}">
        </div>
        <h6 class="title-category">${f.fundCategory }</h6>
        <div class="title">${f.fundName }</div>
    </div>
    <div class="funding-navi">
         <a href="/fundView.do?fundNo=${f.fundNo }&memberId=${sessionScope.m.memberId }&sellerId=${f.memberId}"><span class="1">스토리</span></a>
        <a href="/fundViewReturnInfo.do?fundNo=${f.fundNo }&memberId=${sessionScope.m.memberId }&sellerId=${f.memberId}"><span class="2">반환 ∙ 정책</span></a>
        <a href="/fundViewNotice.do?fundNo=${f.fundNo }&memberId=${sessionScope.m.memberId }&sellerId=${f.memberId}&reqPage=1&type=all"><span class="3">새소식</span></a>
        <a href="/fundViewSupporter.do?fundNo=${f.fundNo }&memberId=${sessionScope.m.memberId }&sellerId=${f.memberId}"><span class="4">서포터</span></a>
    </div>
    <div class="space-bar"></div>

    <div class="detail-container">
        <!--왼쪽 콘텐츠-->
        <div class="detail-view">
            <div class="return">이 프로젝트의 정보 및 정책을</div>
            <div class="return">반드시 확인하세요.</div>
            <div class="return-content">펀딩 취소 및 리워드 옵션 변경, 배송지 변경 안내</div>
            <div class="detail-fix">참여한 펀딩 정보는 <button class="mypage">내 펀딩 내역</button>에서확인해주세요. 마감일 이후에는 펀딩에 대한 리워드 제작 및 배송이 시작되어, 취소와 더불어 배송지 및 리워드 옵션 변경은 불가합니다.</div>
            <hr>
            <div class="return-content">사용 중 발생한 하자에 대한 A/S 정책</div>
            <div class="detail-active">${f.fundAs }</div>
            <hr>
            <div class="return-content">펀딩금 반환 안내</div>
            <div class="detail-fix">아래 어느 하나에 해당될 경우 펀딩금 반환은 불가합니다.<br><span>- 메이커가 프로젝트 페이지 내에 명시적으로 고지한 하자 불인정 사유에 해당하는 경우<br>(예) 공장 제작 과정상 벌어짐 방지를 위해 봉제되어 제공되는 포켓은 하자 사유가 되지 않습니다.<br>- 서포터의 귀책 사유로 리워드의 일부 혹은 전체가 분실/파손/고장/오염/훼손이 발생된 경우<br>- 모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 다른 경우<br>- 공연, 디지털컨텐츠, 여행 패키지 상품, 무형 서비스 및 컨텐츠의 제공이 완료되었을 경우</span><br><br>기타 주의 사항<br><span>- 크라우드펀딩의 특성상 프로젝트 종료 후 서포터의 단순변심으로 인한 펀딩금 반환은 불가합니다.<br>- 회사는 메이커와 상호 협의 하에 프로젝트를 취소할 수 있으며, 펀딩 종료 후 프로젝트가 취소될 경우에는 펀딩금이 반환됩니다.<br>- 하자가 있는 경우, 리워드 반송을 위한 배송비는 메이커가 부담하여야 하고 하자가 없는 경우에는 리워드 반송 및 재반송에 대한 배송비를 서포터에게 청구될 수 있습니다.</span>
            </div>
 

        </div><!--왼쪽 콘텐츠 끝-->
        <div class="space"></div>
        
        <!--오른쪽 콘텐츠-->
        <div class="detail-reward">
            <!--프로젝트 상태-->
            <div class="project-status">
                <div class="remaining-day">${f.dateGap}일 남음</div><br>
                <div class="rate-bar"></div>
                <span class="achievement-rate">
                    <strong class="achieve">d</strong> % 달성
                </span><br>
                <span class="total-amount">
                    <strong>${p.fundingSum }</strong> 원 펀딩
                </span><br>
                <span class="total-supporter">
                    <strong>${p.supporterSum }</strong> 명의 서포터
                </span><br>
                <input type="hidden" class="fundingSum" value="${p.fundingSum}">
                <input type="hidden" class="fundAmount" value="${f.fundAmount}">
                <input type="hidden" class="supporterSum" value="${p.supporterSum}">
                <div class="funding-linkwrap">
                    <button class="funding-link" id="pay" style="border:none;">펀딩하기</button>
                </div>
                <br>
                <div class="btn-box">
                    <button class="like-btn">
                        <span class="material-icons" id="likes">favorite_border</span>
                        <!-- <span class="material-icons likes">favorite</span>  -->
                        <span class="btn-value" id="likeSum">${f.fundLike }</span><!--  -->
                        <input type="hidden" id="fundLike" value="${f.fundLike }">
                        <input type="hidden" id="likeCheck" value="${fl.likeCheck}">
                    </button>
                    <button class="report-btn" type="submit">
                        <span class="material-icons">report</span>                
                        <span class="btn-value" id="report-open">프로젝트 신고하기</span>
                    </button>
                </div>
            </div>
            
            <!--메이커 정보-->
            <div class="seller-info">메이커 정보</div>
            <div class="seller-wrap">
                <div class="seller-detail">
                    <span class="material-symbols-outlined seller-profile">
                        badge</span>
                    <span class="seller-name">
                       	${s.owner }
                    </span>
                </div>
                <div class="seller-intro">
                   		${s.enIntro } 
                </div> 
                <button class="seller-dm">
                    <span class="material-symbols-outlined">
                        contact_support</span>
                    <span class="dm">문의하기는 챗봇 이용</span>
                </button>               
            </div>
            <!--리워드 정보-->
            <div class="reward-info">리워드 정보</div>
         
            <!--리워드 1개 생성-->
         <c:forEach items="${list }" var="r" varStatus="i">
            <a href="#" class="reward-linkwrap">
                <div class="reward-wrap">
                    <div class="reward-price">${r.rewardPrice}원 펀딩</div>
                    <div class="reward-name">${r.rewardName}</div>
                    <div class="reward-intro">${r.rewardIntro}</div>
                    <div class="reward-intro option">*옵션*<br>${r.rewardOption}</div>
                    <div class="reward-fix">배송비</div>
                    <div class="reward-deliveryfee reward-active">${r.rewardDeliveryfee}원</div>
                    <div class="reward-fix">리워드 발송 시작일</div>
                    <div class="reward-send reward-active">${r.rewardSend}</div>
                    <div class="reward-count">
                        <span class="reward-fixcount">제한수량 ${r.rewardCount}개</span>
                        <!-- <span class="reward-remaining">현재 (데이터)개 남음!</span>  -->
                    </div>
                    <!-- <div class="reward-status reward-active">총 (데이터)개 펀딩완료</div> -->
                </div>
            </a><!--리워드 1개 생성-->
          </c:forEach>
                 <div style="height:200px;"></div>
          
        </div><!--오른쪽 콘텐츠 끝-->
    </div>
    
        <!--신고하기 모달-->
    <div class="container"> 
        <div class="popup-wrap" id="report-modal"> 
            <div class="popup">	
                <div class="popup-head">	
                    <span class="head-title"></span>
                    <!--<span class="material-symbols-outlined pop-btn close" id="close">close</span>-->
                </div>
                <div class="popup-body">	
                    <div class="body-content">
                        <div class="report-titlebox">
                            <span>이 펀딩 프로젝트에 문제가 있나요?</span>
                        </div>
                        <div class="report-contentbox">
                            <br><span>신고가 접수된 이후에는 원활한 진행을 위해 취소할 수 없습니다. </span><br><span>신중하게 신고해주세요.</span>
                        </div>
                    </div>
                </div>
                <div class="report-foot">
                <span class="report-modal report" id="report">신고하기</span>
                <span class="report-modal confirm" id="exit">닫기</span>

                </div>
            </div>
        </div>
    </div><!--모달--> 
    <input type="hidden" class="fundNo" value="${f.fundNo }">
    <input type="hidden" class="login" value="${not empty sessionScope.m}">
    <input type="hidden" class="memberId" value="${sessionScope.m.memberId }">
<script>
//마이페이지
$(".mypage").click(function(){
	const login = $(".login").val();
	if (login){
		location.href="/myPageFrm.do";
	}else{
		alert("로그인을 먼저 진행해주세요");
	}
});
"/myPageFrm.do"

$("#pay").click(function(){
	const login = $(".login").val();
	if (login){
		location.href="/payFunding.do?fundNo=${f.fundNo }";
	}else{
		alert("로그인을 먼저 진행해주세요");
	}
});
//펀딩률
let fundingSum = $(".fundingSum").val();
let fundAmount = $(".fundAmount").val();
$(".achieve").text(Math.floor(fundingSum / fundAmount *100));


//프로젝트 신고하기 모달
$(function(){
    $("#confirm").click(function(){
        modalClose();
        //컨펌 이벤트 처리
    });
    $("#report-open").click(function(){        
        $("#report-modal").css('display','flex').hide().fadeIn();
    });
    $("#exit").click(function(){
        modalClose();
    });
    function modalClose(){
        $("#report-modal").fadeOut();
    }
});
//신고하기 확인여부
$(function(){
	const login = $(".login").val();
	const fundNo = $(".fundNo").val();
	$("#report").click(function(){
		if(login){
			let result = confirm("정말 신고하시겠습니까?");
			if(result==true){
				location.href="/reportFund.do?fundNo="+fundNo;
				//$("#report").attr('disabled', true);
			}else{
				$("#report-modal").fadeOut();
			}				
		}else{
			alert("로그인을 진행해주세요.")
		}
		});
	});

//좋아요 
//체크여부
$(document).ready(function () {
	let likeCheck = $("#likeCheck").val();
	if(likeCheck==0){ //로그인 안함, 좋아요 안함
		$("#likes").text("favorite_border");
	}else{			//좋아요 함
		$("#likes").text("favorite");
	}
});

$(".like-btn").click(function(){
	const login = $(".login").val();
	let fundNo = $(".fundNo").val();
	let memberId = $(".memberId").val();

	if(login){
		//likeCheck
		$.ajax({
			url : "/likeCheck.do",
			data:{fundNo:fundNo,memberId:memberId},
			success : function(data){
				if(data != -1){
					const likes = $("#likes").text();					
					if(likes == 'favorite'){
						$("#likes").text("favorite_border");	
					}else{
						$("#likes").text("favorite");
					}
				}//if
				$("#likeSum").text(data);
			}
		});

	}else{
		alert("로그인이 필요합니다.");
	}
});


</script>

</body>
</html>