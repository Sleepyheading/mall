<?php if (!defined('THINK_PATH')) exit(); $username = session('adminUser'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>后台主页</title>

  <link href="/Public/css/public.css" type="text/css" rel="stylesheet">
  <link href="/Public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/Public/css/public.css" rel="stylesheet"></head>
  <link rel="stylesheet" href="/Public/css/party/bootstrap-switch.css" />
  <link rel="stylesheet" type="text/css" href="/Public/css/party/uploadify.css">

  <script src="/Public/js/jquery-1.9.0.js"></script>
  <script src="/Public/bootstrap/js/bootstrap.min.js"></script>
  <script src="/Public/js/layer/layer.js"></script>
  <script src="/Public/js/popup.js"></script>
  <script src="/Public/js/admin/image.js"></script>
  <script type="text/javascript" src="/Public/js/party/jquery.uploadify.js"></script>

<body>
  <div id="wrapper">
    <nav class="navbar  navbar-fixed-top navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<?php echo U('Index/index');?>">商城管理系统</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                <span class="glyphicon glyphicon-user"></span>
                你好，
                <?php echo $username['username'];?>
                !
                <span class="glyphicon glyphicon-triangle-bottom"></span>
              </a>
              <ul class="dropdown-menu">
                <li>
                  <a href="#">
                    <span class="glyphicon glyphicon-cog"></span>
                    个人设置
                  </a>
                </li>
                <li role="separator" class="divider"></li>
                <li>
                  <a href="<?php echo U('Login/loginout');?>">
                    <span class="glyphicon glyphicon-off"></span>
                    用户退出
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
        <!-- /.navbar-collapse --> </div>
      <!-- /.container-fluid --> </nav>
<?php
 $navs = D("Menu")->getAdminMenus(); ?>
<ul class="nav navbar-nav side-nav navbar-default">
    <li>
        <a href="<?php echo U('Index/index');?>">首页</a>
    </li>
    <?php if(is_array($navs)): foreach($navs as $key=>$v): ?><li>
            <a href="<?php echo (getAdminMenuUrl($v)); ?>" ><?php echo ($v["name"]); ?></a>
        </li><?php endforeach; endif; ?>
</ul>
<div id="page-wrapper">
<!-- <div class="alert alert-warning alert-dismissible fade in" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
    	<div class="row">
		<h1 class="text-center">欢迎来到后台管理系统</h1>
		<h3 class="text-center">Welcome to the superior back-end systems</h3>
	</div> -->
	<!-- <div class="row">
		<label></label>
	</div>
	<div class="row">
		<div class="col-md-4">
		  <div class="alert  alert-dismissible bgc1" role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  <span class="glyphicon glyphicon-cog font20" ></span><strong class="font20">系统信息</strong> <p><ul>
				<li>操作系统<span>WINNT</span></li><li>运行环境<span>Apache/2.4.9 (Win32) PHP/5.5.12</span></li><li>MYSQL版本<span>5.6.17</span></li><li>程序版本<span>A.1.0&nbsp;&nbsp;&nbsp;</span></li>
		</ul></p>
		</div>
		</div>
		<div class="col-md-4">
		  <div class="alert alert-dismissible bgc3 " role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  <span class="glyphicon glyphicon-tags font20 mr5" ></span><strong class="font20">系统功能</strong> <p>
		  <ul>
				<li>用户管理</li>
	            <li>用户登陆注册</li>
	            <li>无限极分类</li>
	            <li>文章管理</li>
	            <li>单页管理</li>
		</ul></p>
		</div>
		</div>
		<div class="col-md-4">
		  <div class="alert alert-dismissible bgc2 " role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  <span class="glyphicon glyphicon-bullhorn font20" ></span><strong class="font20">系统功能</strong> <p>
		  <ul>
				<li>用户管理</li>
	            <li>用户登陆注册</li>
	            <li>无限极分类</li>
	            <li>文章管理</li>
	            <li>单页管理</li>
		</ul></p>
		</div>
		</div>
	</div>

	<div class="row">
	  <div class="col-md-4">
		  <div class="alert alert-success alert-dismissible" role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  <span class="glyphicon glyphicon-align-left font20" ></span><strong class="font20">MVC分层模式</strong> <p>使用MVC应用程序被分成三个核心部件：模型（M）、视图（V）、控制器（C），他不是一个新的概念，只是ThinkCMF将其发挥到了极致。</p>
		</div>
		</div>
	  <div class="col-md-4">
		  <div class="alert alert-info alert-dismissible" role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		   <span class="glyphicon glyphicon-wrench font20" ></span><strong class="font20">RBAC管理模式</strong><p>基于角色的访问控制(Role-Based Access Control),权限与角色相关联，用户通过成为适当角色的成员而得到这些角色的权限,极大地简化了权限的管理。</p>
		</div>
		</div>
	  <div class="col-md-4">
		  <div class="alert alert-danger alert-dismissible" role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		    <span class="glyphicon glyphicon-briefcase font20" ></span><strong class="font20">商家后台管理</strong><p>开设商家后台管理，商家管理人员可通过系统添加产品，以及商家的个人信息，地址，联系方式，以及相关数据的查看，通过快速管理产品，实现与客户更好的体验性。</p>
		</div>
		</div>
	</div>
	
      <p>
        <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="right" title="569705519@qq.com">联系我们</button>
      </p>
</div> -->
	
</div>


<script src="/Public/js/admin/common.js"></script>
</div>
</body>
</html>
<script type="text/javascript">
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
</script>