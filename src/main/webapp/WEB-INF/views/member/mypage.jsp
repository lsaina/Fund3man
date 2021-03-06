<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mypage</title>
    <link rel="stylesheet" href="resources/css/bootstrap.css">
    <link rel="stylesheet" href="resources/css/mypage4.css">
    <script src="resources/js/jquery-3.6.0.js"></script>
    <script src="resources/js/mypage1.js"></script>
    
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<style>
		.btn-info{
			margin-top:10px;
			width:650px;
		}
		#miss{
			margin:0px;
		}
		#mypg{
		text-align:center;
	    color: #FFC4DD;
	    margin: 30px auto;
	     
	    font-size:50px;
	    border-radius: 50px;
	    display: block;
	    width:80px;
	    
	 
	    
		}
		#active {
			background-color : orangered;
		}
		.pagination{
			margin-top: 50px;
			margin-left:260px;
		}
		#mypgI{
		
	    
	    
	    border-radius: 50px;
	    display: block;
	    width:100px;
	    height:100px;
		
		}
		.mImgBox{
		   margin:30px auto;
		   display: block;
			width:80px;
			height:80px;
			border-radius:50px;
			overflow:hidden;
		}
		#mypg:hover{
			transform : none;
		}
		.Bupdate{
			font-size :15px;
			width:100px;
			text-align:center;
		}
		#h5{
		    font-size: 20px;
		    padding-left: 80px;
		    color: #212529;
		    font-weight:400;
		}
		.fund-wrap{
			margin:0px;
		}
		.exp{
		}
		.fundtitle{
			padding-left:10px;
			
		}
		.exp{
			padding-left:10px;
		}
		
	</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>    
	
	
	<input type="hidden" name="memberId" value="${sessionScope.m.memberId }">
    <div class="content1">
        <div class="wrapper">
            <div class="one"></div>
            <div class="three">
                <div class="profile">
                	<c:if test="${sessionScope.m.gender==0 }">	
                    <span class="material-symbols-outlined" id="myp">
                        account_circle
                        </span>
                    </c:if>
                    <c:if test="${sessionScope.m.gender==1 }">	
                    <span class="material-symbols-outlined" id="mypg">
                        account_circle
                        </span>
                    </c:if>
                    <a href="myProfile.do?memberId=${sessionScope.m.memberId }" class="Bupdate">-<span>${sessionScope.m.memberName}</span>???</a>
                        
                    <div class="int">????????? * ????????????</div>
                </div>
                <div class="logout">
                	<c:if test="${sessionScope.m.categoryNo==1 }">
                    	<a href="sellerReqFrm.do" class="aout"><button class="btn btn-outline-success" id="outBtn">????????? ??????</button></a>
                    </c:if>
                    <c:if test="${sessionScope.m.categoryNo==2 }">
                    	<a href="logout.do" class="aout"><button class="btn btn-outline-success" id="outBtn">????????????</button></a>
                    </c:if>
                </div>
                
	                <div class="logout onload">
	                	
	                	<a href="onLoadFrm.do" class="aout"><button class="btn btn-outline-success" id="outBtn">?????? ??????</button></a>
	                	
	                </div>
                
                <div class="setting">
                    <a href="setting.do" class="mUS"><span class="material-symbols-outlined" id="sett">
                        settings
                        
                    </span><sup>??????</sup></a>
                    
                </div>
                
            </div>
            <div class="four">
                <ul class="count">
                    <li class="fundCount">
                        <span class="fleftCount">0</span>
                        <a href="fundingFrm.do">??????</a>
                    </li>
                    <li class="buyCount">
                        <span class="storeCount">0</span>
                        <a href="mystoreFrm.do">??????</a>
                    </li>
                </ul>
                <div class="myCoupon">
                    <div>
                        <a href="dmMain.do">
                            <span class="material-symbols-outlined" id="symbols">
                                mail
                                </span>
                            <sup id="text1">?????????</sup>
                            <sup id="text2">></sup>
                        </a>
                        <a href="mycouponFrm.do" class="cou" >
                            <span class="material-symbols-outlined symbols" id="symbols">
                                redeem
                                </span>
                            <sup id="text1">??????</sup>
                            <sup id="text2">></sup>
                        </a>
                    </div>
                </div>
                <span id="h5">Community</span>
                <div class="myCommunity">
                    
                    <div class="comm">
                        <a href="myfollowerFrm.do">
                            <span class="material-symbols-outlined" id="symbols">
                                group
                                </span>
                            <sup id="text3">?????? ?????????</sup>
                            <sup id="text2">></sup>
                        </a>
                        <a href="myfollowingFrm.do" class="cou" >
                            <span class="material-symbols-outlined" id="symbols">
                                group_add
                                </span>
                            <sup id="text3">?????? ?????????</sup>
                            <sup id="text2">></sup>
                        </a>
                    </div>
                </div>
                
            </div>
            
            <div class="five">
                <div class="mypage">
                    <span >?????????</span>
                    <span class="material-symbols-outlined">
                        arrow_drop_down_circle
                        </span>
                    
                </div>
            </div>
            <c:if test="${sessionScope.m.categoryNo==2}">
            <div class="six">
                <div class="sellerpage">
                    <span>?????????</span>
                    <span class="material-symbols-outlined">
                        arrow_drop_down_circle
                        </span>
                </div>

            </div>
            </c:if>
        </div>
        <div class="wrapper1">
            <div class="one"></div>
            <div class="three">
                <div class="profile2">
                    <div class="mImgBox"><img src="resources/image/notice/main/02_truck.png" id="mypg"></div>
                    <div class="Bupdate1">-<span class="sellerName">????????? ?????????</span>???</div>
                    <a href="updateSellerFrm.do" class="Bupdate1">-<span>????????? ????????????</span> ></a>
                    <div class="int">????????? * ?????????</div>
                    
                </div>
                <div class="logout">
                    <a href="logout.do" class="aout"><button class="btn btn-outline-success" id="outBtn">????????????</button></a>
                </div>
                <div class="setting">
                    <a href="mypageUpdate.do" class="mUS"><span class="material-symbols-outlined" id="sett">
                        settings
                        
                    </span><sup>??????</sup></a>
                </div>
            </div>
            <div class="four">
                <div class="fc">
                    <div class="funding">
                            <h6>??????</h6>
                    </div>
                    <div class="store">
                            <h6>?????????</h6>
                    </div>
                </div>
                <div class="fund">
                	<div class="fund-wrap">
	                    <div>????????????</div>
	                    <ul class="Info">
	                       
	                    </ul>
	                    <ul class="pagination pagination-sm">
	                       
	                     </ul>
	                    <a href="createFunding.do" class="fundopen"><button class="btn btn-info btnf">?????? ?????? ????????????</button></a>
	                    <div class="mycomment1">
                        <div class="comm">
                            <a href="fundUpdateFrm.do">
                                <span class="material-symbols-outlined" id="symbols">
								storefront
								</span>
                                <sup id="text3">?????? ??????</sup>
                                <sup id="text2">></sup>
                            </a>
                            
                        </div>
                    </div>
	                </div>

                </div>
                <div class="notthingF">
		                <div class="msgI">
		                    <span class="material-symbols-outlined" class="idea">
		                        light
		                        </span>
		                    <span>??????????????? ??????????????? ????????? ?????? ???????????????!</span>
		                </div>
		                
		                <a href="createFunding.do" class="fundopen"><button class="btn btn-info btnf">?????? ???????????? ????????????</button></a>
	            </div>
                <!-- ????????? ????????? ??????  -->
                <div class="storeCt">
                	<div class="store-wrap">
		                    <div>????????????</div>
		                    <ul class="Info">
		                        
		                       
		                       
		                    </ul>
		                    <ul class="pagination pagination-sm">
		                       
		                      </ul>
		                    <a href="storeStart.do" class="fundopen"><button class="btn btn-info btnf">????????? ???????????? ????????????</button></a>
		                     <div class="mycomment1">
		                        <div class="comm">
		                            <a href="storeUpdateFrm.do">
		                               <span class="material-symbols-outlined" id="symbols">
										local_mall
										</span>
		                                <sup id="text3">?????? ?????????</sup>
		                                <sup id="text2">></sup>
		                            </a>
		                            
		                        </div>
		                    </div>
		                </div>
		             </div>
                 <div class="notthingF">
	                <div class="msgI">
	                    <span class="material-symbols-outlined" class="idea">
	                        light
	                        </span>
	                    <span>??????????????? ??????????????? ????????? ?????? ???????????????!</span>
	                </div>
	                
	                <a href="storeStart.do" class="fundopen"><button class="btn btn-info btnf">????????? ???????????? ????????????</button></a>
            	</div>
            </div>
           
            
            <div class="five">
                <div class="mypage mypage1">
                    <span >?????????</span>
                    <span class="material-symbols-outlined">
                        arrow_drop_down_circle
                        </span>
                    
                </div>
            </div>
            <div class="six">
                <div class="sellerpage sellerpage1">
                    <span>?????????</span>
                    <span class="material-symbols-outlined">
                        arrow_drop_down_circle
                    </span>
                </div>
        </div>
        </div>
    </div>
    <input type="hidden" name="memberNo" value="${sessionScope.m.memberNo}">
    <script>
   		 const memberId = $("[name=memberId]").val();
    	$(function(){
    		$(".aout").eq(0).show();
    		$.ajax({
        		url: "/selectSeller.do",
        		data:{memberId:memberId},
        		type:"get",
        		success:function(data){
        			console.log(data)
        			if(data.authSeller==0){
        							//????????? 0?????? 
        				$(".aout").eq(0).hide();
        			}else if(data.authSeller==2){
        				$(".aout").eq(0).hide();
        				$(".logout").show();
        			}
        		},
        		error:function(){
        			console.log("????????????");
        		}
        		
        	});
    		const onload =$(".onload");
    		
    		$.ajax({
    			url : "/selectSeller.do",
    			data : {memberId:memberId},
    			type : "get",
    			success: function(s){
    				//????????? ???????????? 
    				$(".mImgBox").empty();
    				$(".mImgBox").append("<img src='resources/image/member/"+s.enPath+"' id='mypgI'>");
    				//?????? ???????????? 
    				$(".sellerName").text("");
    				$(".sellerName").text(s.owner);
    				$(".sellerName").css({
    					"font-size" : "12px"
    				});
    				if(s!=null&&s.authSeller==0||s.authSeller==1||s.authSeller==2){
    					
    					onload.show();
    				}
    			},
    			error: function(){
    				contsole.log("???????????? ????????? ??????");
    			}
    		});
    		//????????? ????????? ???????????? 
    		const memberNo = $("[name=memberNo]").val();
    		const req =1;
			$.ajax({
        		
        		url:	"mystore.do",
        		type:	 "post",
        		data : {memberNo:memberNo, req:req},
        		success : function(data){
        			;
        			//?????????????????? ?????????  ???????????? store_product
        			$(".storeCount").text(data.storeCount);
        			
        		}//success
        		
        	});//ajax??????
        	//????????? ????????? ?????????
			 
			    //??????????????? ????????????
			    	const fpayStatus=0;
			    	 $.ajax({
			    		 
						  url : "/myfund.do",
						  data : {memberId:memberId,req:req,fpayStatus:fpayStatus},
						  type:"post",
						  success : function(list){
							 
							$(".fleftCount").text(list.fpayCount);
					   }//success?????? 
			    	});//ajax?????? 
			 
    	});
    	//????????? ???????????? ??? 
    	$(".funding").on("click",function(){
    		funding(1);
    		$(".store-wrap").show();
			$(".notthingF").eq(1).hide();
    	});
    	function funding(req){
    		$.ajax({
    		  url : "selectSFund.do",
    		  data : {memberId:memberId,req:req},
    		  success: function(fund){
    			  console.log(fund);
    			if(fund.fund.length==0){
    				$(".fund-wrap").hide();
    				$(".notthingF").eq(0).show();
    			}else{
    				
    				$(".fund-wrap").show();
    				$(".notthingF").eq(0).hide();
    				  $(".Info").empty();
    	              	for(let i=0; i<fund.fund.length; i++){
    	              		const li =$("<li>");
    	                	//????????? ?????????
    	                  	const a =$("<a href='fundView.do?fundNo="+fund.fund[i].fundNo+"&memberId="+fund.fund[i].memberId+"'>");
    	                	const div = $("<div class='imgbox'>");
    	                	const img = $("<img src='resources/image/fund/upload/"+fund.fund[i].fundFilepath1+"' class='fundImg'>");
    	                	div.append(img);
    	                	a.append(div);
    	                	li.append(a);
    	                	//?????? ?????? 
    	                	const div1 = $("<div class='fundtitle'>");
    	                	div1.text(fund.fund[i].fundName);
    	                	li.append(div1);
    	                	//?????? ??????
    	                	const div2 = $("<div class='exp'>");
    	                	div2.append(fund.fund[i].fundIntro);
    	                	li.append(div2);
    	                	$(".Info").append(li);
    	              	}
    	            		$(".pagination").empty();
    	            		$(".pagination").append(fund.pagenation);
	
    			}//????????? length??? 0??? ?????????
            	              	
    		  }//success??????
    		});
    	}//?????? ????????? ?????? 
    	
    	//???????????? ???????????? ??? 
    	$(".store").on("click",function(){
    		store(1);
    		$(".notthingF").eq(0).hide();
    		
    	})
    	function store(req){
    		$.ajax({
    			url : "selectSStore.do",
    			data : {memberId:memberId,req:req},
    			success : function(store){
    				console.log(store);
    				if(store.store.length==0){
    					$(".store-wrap").hide();
    					$(".notthingF").eq(1).show();
    				}else{
    					$(".store-wrap").show();
    					$(".notthingF").eq(1).hide();
    					 $(".Info").empty();
    					for(let i=0; i<store.store.length; i++){
    						const li =$("<li>");
    	                	//????????? ?????????
    	                  	const a =$("<a href='storeView.do?storeNo="+store.store[i].storeNo+"'>");
    	                	const div = $("<div class='imgbox'>");
    	                	const img = $("<img src='resources/image/store/upload/"+store.store[i].storeImg1+"' class='fundImg'>");
    	                	div.append(img);
    	                	a.append(div);
    	                	li.append(a);
    	                	//????????? ?????? 
    	                	const div1 = $("<div class='fundtitle'>");
    	                	div1.text(store.store[i].storeProduct);
    	                	li.append(div1);
    	                	//???????????????
    	                	const div2 = $("<div class='exp'>");
    	                	div2.append(store.store[i].storeProductcontent);
    	                	li.append(div2);
    	                	$(".Info").append(li);
    	              	}
    	            		$(".pagination").empty();
    	            		$(".pagination").append(store.pagenation);
    				}//null??? ????????? ?????? 
    			}//success??? 
    		});//ajax
    	}//store ?????? 
    
    </script>
</body>
</html>