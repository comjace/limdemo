<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>运营监管平台</title>
<link href="css/closeble-tab.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>
        body,html{height:100%;width:100%;overflow:hidden;}
        
        *{margin:0;padding:0;box-sizing:border-box;}
</style>
<style>
        
        #div_tab{background:#fff url(images/t_tab_bg.gif) repeat-x 0 bottom;height:26px;padding:15px 15px 0;margin-bottom:10px;}
        #div_tab li{float:left;text-align:center;position:relative;list-style:none;}
        
        #div_tab li{background:url(images/t_tab_uselectbg.gif);margin-top:3px;height:23px;}
        #div_tab li span{background:url(images/t_tab_uselectbg.gif);height:23px;line-height:23px;}
        
        #div_tab li.crent{background:url(images/t_tab_selectbg.gif);margin-top:2px;height:24px;}
        #div_tab li.crent span{background:url(images/t_tab_selectbg.gif);height:24px;line-height:24px;}
        
        #div_tab li,#div_tab li.crent{color:#fff;background-repeat:no-repeat;background-position:0 0;}        
        #div_tab li span,#div_tab li.crent span{display:inline-block;padding:0 36px 0 15px;background-repeat:no-repeat;background-position:right bottom;}
        
        #div_tab li .menua{color:#000;font-size:12px; text-decoration:none;position:relative;}
        #div_tab li.crent .menua,#div_tab li .menua:hover{color:#ff0000;}
        #div_tab li .win_close,#div_tab li.crent .win_close{width:14px;height:14px;position:absolute;top:4px;right:5px;cursor:pointer;display:block;overflow:hidden;background:url(images/t_delete_ico.gif) no-repeat;}                
        #div_tab li .win_close{background-position:0 -14px;}
        #div_tab li .win_close:hover{background-position:0 0;}
        
        .clearfix:after {content:"."; display:block;height:0;clear:both; visibility:hidden;} 
        *html .clearfix{height:1%;}
        *+html .clearfix{height:1%;}
        .clearfix{display:inline-block;} 
        /* Hide from IE Mac */ 
        .clearfix {display:block;} 
</style>


   		

</head>
<body>
<div class="container-fluid " style="height:100%;width:100%;padding:0px;" >

	<div class="row clearfix" style="width:100%;height:100%;margin:0px;">
		<div class="col-md-1 col-sm-2" style="background:#333;text-align:left;float:left;height:100% ">
			<br><br><br>
		
		
			<ul class="nav nav-pills nav-stacked">
				
				<li class=" " style="text-align:left">
				
					<img src="images/timg.jpg" class="img-circle"  width="80" height="80" >
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">系统管理员</a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#">注销</a>
						</li>
						<li>
							 <a href="#">退出</a>
						</li>					
					</ul>
				</li>
				<li><br></li>		
				<li class="dropdown pull-center">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">代理商管理</a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#">代理商列表</a>
						</li>
						<li>
							 <a href="#">添加代理商</a>
						</li>
											
					</ul>
				</li>
				
				<li class="dropdown pull-center">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">商户管理</a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#">商户列表</a>
						</li>
										
					</ul>
				</li>
				<li class="dropdown pull-center">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">审核管理</a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#" onclick="CreateDiv('check1','m-check.jsp','个人信息审核')">个人版商户审核</a>
						</li>
						<li>
							 <a href="#"onclick="CreateDiv('check2','m-check.jsp','商户信息审核')">商户版商户审核</a>
						</li>
											
					</ul>
				</li>
				<li class="dropdown pull-center">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">卡片管理</a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#">已下发列表</a>
						</li>
						<li>
							 <a href="#">未下发列表</a>
						</li>
						<li>
							 <a href="#">卡片生成</a>
						</li>	
						<li>
							 <a href="#">卡片查询</a>
						</li>					
					</ul>
				</li>
				<li class="dropdown pull-center">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">信用卡管理</a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#">信用-代理</a>
						</li>
						<li>
							 <a href="#">信用卡-商户</a>
						</li>
										
					</ul>
				</li>
				<li class="dropdown pull-center">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">交易统计</a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#">总数据中心</a>
						</li>
						<li>
							 <a href="#">代付详情</a>
						</li>
						<li>
							 <a href="#">提现管理</a>
						</li>		
						<li>
							 <a href="#">交易核对</a>
						</li>
						<li>
							 <a href="#">净利统计</a>
						</li>			
					</ul>
				</li>
				
				<li class="dropdown pull-center">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">数据下载</a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#">分润管理</a>
						</li>
						<li>
							 <a href="#">提现管理</a>
						</li>
							<li>
							 <a href="#">代理管理</a>
						</li>	
					</ul>
				</li>
				<li class="dropdown pull-center">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle" >系统管理</a>
					<ul class="dropdown-menu">
						<li>
							 <a href="#">系统公告</a>
						</li>
						<li>
							 <a href="#">消息推送</a>
						</li>
						<li>
							 <a href="#">用户通告</a>
						</li>	
						<li>
							 <a href="#">通道切换</a>
						</li>
						</ul>
				</li>
				<li class="dropdown pull-center">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle" >提现到卡</a>
					 
					<ul class="dropdown-menu">
						<li>
							 <a href="#" onclick="CreateDiv('yyy','index2.jsp','好付提现')">好付提现</a>
						</li>
						<li>
							 <a href="#" onclick="CreateDiv('xxx','http://www.baidu.com','baidu')">速煜提现</a>
						</li>
						<li>
							 <a href="#" onclick="CreateDiv('zzz','http://192.168.0.102:8080/wc/show.jsp')">提现列表</a>
						</li>	
						
						</ul>
				</li>
				
				
				
				
				
				
				
			</ul>
		</div>
		<div class="col-md-11 col-sm-10" style="background:#fafafa;margin-left:0px;flaot:right;padding:0px;height:100% ">
		
		<div style="background:#fff;text-align:center;font-size:20px">
		<br><h4>欢迎使用ＢＢＫ系统管理平台</h4>
		<br>
		</div>
		 
 			
        <ul class="clearfix" id="div_tab" style="height:5%;background:#f3f3f3"></ul>
 		<div id="div_pannel" style="height:80%"></div>
	
			
		</div>
		
	</div>
	
</div>


<script type="text/javascript" src="js/websjy.js"></script>

<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>

<script type="text/javascript" src="js/bootstrap.min.js"></script>


</body>
</html>