<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  <%@ include file="../check.jsp" %>  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>航空售票系统</title>
 <link rel="stylesheet" href="layui/css/layui.css">
 <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
 <script src="js/main.js"></script>
 <script src="layui/layui.js"></script>
 <script>
layui.use('element', function(){
  var element = layui.element;
});
</script> 
<%
String type="1";
/* try{
type=session.getAttribute("utype").toString();
}catch(Exception e){
	response.sendRedirect("../login.jsp");
} */
%>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
  	<% if(type.equals("2")){ %>
    <div class="layui-logo">航空后台管理系统</div>
    <%}else if(type.equals("1")){ %>
    <div class="layui-logo">航空售票系统</div>

    <%} %>
    
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="">用户</a></li>
<!--       <li class="layui-nav-item"><a href="">控制台</a></li> -->
      <li class="layui-nav-item"><a href="">商品管理</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="" target="aaa" >邮件管理</a></dd>
          <dd><a href="" target="aaa" >消息管理</a></dd>
          <dd><a href="" target="aaa" >授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
     <li class="layui-nav-item"><a href="">消息</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;" >
         <!--  <img src="http://t.cn/RCzsdCq" class="layui-nav-img"> -->
          <i class="username"></i>
        </a>
        <dl class="layui-nav-child">
          <dd><a href="../Index/safe.jsp" target="aaa">修改密码</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="../exit.jsp">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a class="" href="javascript:;">基本设置</a>
          <dl class="layui-nav-child">
            <% if(type.equals("2")){ %>
            <dd><a href="javascript:;">个人信息</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="javascript:;">列表三</a></dd>
            <%} else if(type.equals("1")){ %>
             <dd><a href="../basic/basic.jsp" target="aaa">个人信息</a></dd>
             <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="javascript:;">列表三</a></dd>
            <%} %>
          </dl>
        </li>
         <%if(type.equals("2")){ %>
         <li class="layui-nav-item">
          <a href="javascript:;"  >信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="../Student/student.html" target="aaa" >航空管理</a></dd>
            <dd><a href="../Class/class_info.html" target="aaa" >用户管理</a></dd>
            <dd><a href="../teacher/teacher.html" target="aaa" >营业点管理</a></dd>
            <dd><a href="../ribao/rb.jsp" target="aaa" >营业员管理管理</a></dd>
            <dd><a href="../Comment/comment.jsp" target="aaa" >票务管理</a></dd>
              <dd><a href="../Comment/comment.jsp" target="aaa" >机务管理</a></dd>
          </dl>
        </li>
		<li class="layui-nav-item">
          <a href="javascript:;">权限设置</a>
          <dl class="layui-nav-child">
            <dd><a href=""  target="aaa">用户权限</a></dd>
            <dd><a href="javascript:;" >列表二</a></dd>
            <dd><a href="javascript:;">列表三</a></dd>
          </dl>
        </li>
         
        <%}else if(type.equals("1")){ %>
        	 <li class="layui-nav-item">
          <a href="javascript:;"  >票务管理</a>
          <dl class="layui-nav-child">
            <dd><a href="../ribao/rb.jsp" target="aaa" >查看已售机票</a></dd>
             <dd><a href="../Comment/comment.jsp" target="aaa" >我的评论</a></dd>
          </dl>
        </li>
         <li class="layui-nav-item">
          <a href="javascript:;"  >航班管理</a>
          <dl class="layui-nav-child">
            <dd><a href="../Student/student.html" target="aaa" >航班查询</a></dd>
            <dd><a href="../Class/class_info.html" target="aaa" >个人信息查询</a></dd>
         
          </dl>
        </li>
        <%} %>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
			<iframe src="../Index/dazi.html" frameborder="0" name="aaa" style="width:100%; height:100%">
			</iframe>
  </div>
  
<div class="layui-footer">
    © uek.com - 底部固定区域
  </div> 
</div>
</body>
</html>