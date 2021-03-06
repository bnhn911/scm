<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	String path=request.getContextPath();
	//http://localhost:8080/工程路径/
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>" >
<meta charset="UTF-8">
<title>网站后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li>收支管理</li>
			<li>收款登记</li>
		</ul>
	</div>

	<div class="rightinfo">    
	    <div class="itab" href="#tab">
	  	<ul> 
	    <li><a  class="selected" href="#tab">货到付款</a></li> 
	    <li><a href="#tab">款到发货</a></li> 
	    <li><a href="#tab">预付款到发货</a></li> 
	  	</ul>
	    </div> 
    </div>
  		<div id="tab" class="tabson">
		<table class="tablelist">
			<thead>
				<tr>
					<th>序号<span class="sort"><img src="../images/px.gif" /></span></th>
					<th>销售单编号</th>
					<th>创建时间</th>
					<th>供应商名称</th>
					<th>创建用户</th>
					<th>附加费用</th>
					<th>产品总价</th>
					<th>销售单总价格</th>
					<th>付款方式</th>
					<th>最低预付款金额</th>
					<th>处理状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>sm0001</td>
					<td>2013-09-09 15:05</td>
					<td>杭州食品有限公司</td>
					<td>王朝</td>
					<td>20</td>
					<td>10180</td>
					<td>10200</td>
					<td>货到付款</td>
					<td></td>
					<td>已发货</td>
					<td><a href="javascript:void(0)" class="tablelink click">收款</a></td>
				</tr>
				

			</tbody>
		</table>


		<div class="pagin">
			<div class="message">
				共<span class="blue">10</span>页，当前显示第&nbsp;<span class="blue">2&nbsp;</span>页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="javascript:;"><p
						class="pagepre"></p></a></li>
				<li class="paginItem"><a href="javascript:;">1</a></li>
				<li class="paginItem current"><a href="javascript:;">2</a></li>
				<li class="paginItem"><a href="javascript:;">3</a></li>
				<li class="paginItem"><a href="javascript:;">4</a></li>
				<li class="paginItem"><a href="javascript:;">5</a></li>
				<li class="paginItem more"><a href="javascript:;">...</a></li>
				<li class="paginItem"><a href="javascript:;">10</a></li>
				<li class="paginItem"><a href="javascript:;"><p
						class="pagenxt"></p></a></li>
			</ul>
		
		</div>


		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span>
			</div>

			<div class="tipinfo">
				<span><img src="../images/ticon.png" /></span>
				<div class="tipright">
					<p>是否确认收款？</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>

			<div class="tipbtn">
				<input name="" type="button" class="sure" value="确定" />&nbsp; <input
					name="" type="button" class="cancel" value="取消" />
			</div>

		</div>




	</div>
	<script type="text/JavaScript" src="../js/jquery.js"></script>
	<script type="text/JavaScript" src="../js/jquery.idTabs.min.js"></script> 
	<script type="text/javascript"> 
      $(".rightinfo ul").idTabs(); 
    </script>
	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>

	<script type="text/javascript">
		$(function() {
			$(".click").click(function() {
				$(".tip").fadeIn(200);
			});

			$(".tiptop a").click(function() {
				$(".tip").fadeOut(200);
			});

			$(".sure").click(function() {
				$(".tip").fadeOut(100);
			});

			$(".cancel").click(function() {
				$(".tip").fadeOut(100);
			});

		});

	</script>
</body>
</html>