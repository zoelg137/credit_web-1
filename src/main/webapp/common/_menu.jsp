
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
pageContext.setAttribute("basePath",basePath);
%>

<div class="row border-bottom white-bg">
	<nav class="navbar navbar-static-top" role="navigation">
		<div class="navbar-header">
			<button aria-controls="navbar" aria-expanded="false"
				data-target="#navbar" data-toggle="collapse"
				class="navbar-toggle collapsed" type="button">
				<i class="fa fa-reorder"></i>
			</button>
			<a href="#" class="navbar-brand">快易收</a>
		</div>
		<div class="navbar-collapse collapse" id="navbar">
			<ul class="nav navbar-nav">
				<li class="active"><a aria-expanded="false" role="button"
					href="${basePath }index_main.jsp"> 首页</a></li>

				<li class="dropdown"><a aria-expanded="false" role="button"
					href="javascript:void(0)" class="dropdown-toggle"
					data-toggle="dropdown"> 债权信息 <span class="caret"></span></a>
					<ul role="menu" class="dropdown-menu">
						<li><a href="${basePath }credit/credit_disposal_list.jsp">债权处置</a></li>
						<li><a href="${basePath }credit/credit_transfer_list.jsp">债权转让</a></li>
					</ul></li>
				<li><a aria-expanded="false" role="button" href="disposal.jsp">
						处置方式 </a></li>
				<li><a aria-expanded="false" role="button"
					href="${basePath }reward/reward_list.jsp"> 线索悬赏 </a></li>
				<li><a aria-expanded="false" role="button" href="index.html">
						专家顾问 </a></li>
			</ul>
		</div>
	</nav>
</div>