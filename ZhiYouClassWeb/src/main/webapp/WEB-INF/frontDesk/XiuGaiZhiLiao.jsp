<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0046)http://localhost:8080/Voids/user/userUpdate.do -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!--<base href="http://localhost:8080/Voids/">-->
<base href=".">
<meta name="viewport"
	content="initial-scale=1, maximum-scale=1, user-scalable=no">

<meta name="renderer" content="webkit">
<meta name="keywords"
	content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
<meta name="description"
	content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">
<link rel="stylesheet" href="../../z/base.css">
<link rel="stylesheet" href="../../z/profile.css">
<link rel="icon" href="http://localhost:8080/Voids/static/z/favicon.png"
	type="image/png">
<title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>

</head>

<body class="w100">




	<header>
		<div class="container top_bar clearfix">
			<img src="./修改资料_files/logo.png" alt="智游">
			<div id="tele">
				<span>4006-371-555</span> <span>0371-88888598</span>
			</div>
		</div>
		<menu>
			<div class="container clearfix">
				<ul class="clearfix f_left">
					<li><a>首页</a></li>

					<li class="menu_active"><a>个人中心</a></li>
				</ul>

				<div id="user_bar">
					<a> <img id="avatar" src="./修改资料_files/avatar_lg.png" alt="""="">




					</a> <a href="ExitHomePageShow">退出</a>
				</div>
			</div>
		</menu>
	</header>

	<main>
	<div class="container">
		<h2>我的资料</h2>
		<div id="profile_tab">
			<ul class="profile_tab_header f_left clearfix">
				<li><a>更改资料</a></li>
				<li class="profile_tab_line">|</li>
				<li><a>更改头像</a></li>
				<li class="profile_tab_line">|</li>
				<li><a href="UpdateUserPasswordShow">密码安全</a></li>
			</ul>
			<div class="proflle_tab_body">
				<div class="proflle_tab_workplace clearfix">
					<div class="profile_avatar_area">

						<img src="http://localhost:8080/Voids/" width="200px;">



					</div>
					<div class="profile_ifo_area">
						<form>
							<input name="id" value="21" type="hidden">
							<div class="form_group">
								<span class="dd">昵 称：</span><input name="name" type="text"
									value="">

							</div>
							<div class="form_group">
								<span class="dd">性 别：</span> <input id="man" type="radio"><label
									for="man">男</label> <input id="woman" type="radio"><label
									for="woman">女</label>



							</div>
							<div class="form_group">
								<span class="dd">生 日：</span>
								<!-- 1990-10-04 -->
								<input name="birthday" type="text" value="">
							</div>
							<div class="form_group">
								<span class="dd">邮 箱：</span> <span>1@qq.com</span>
							</div>
							<div class="form_group">
								<span class="dd">所在地：</span>
								<div id="city">
									<select class="prov" name="prov"><option value="">北京</option>
										
										<option value="河南" selected="selected">河南</option>
										</select>
										
										 <select class="city"
										name="city"><option value="" selected="selected">郑州</option>
	
										
										
								</div>
								<input name="address" id="address" type="hidden">
							</div>
							<div class="form_submit dd">
								<input onclick="return commitForm();" value="保　存" type="submit">
								<a>重置</a>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>



	<footer>
		<div class="container">
			<ul>
				<li><img src="./修改资料_files/footer_logo.png" alt=""
					id="foot_logo"></li>
				<li>版权所有：智游3G教育 ©&nbsp;www.zhiyou100.com</li>
				<li><img src="./修改资料_files/a.png" alt="" id="wxgzh"></li>
			</ul>
		</div>
	</footer>


	<script src="./修改资料_files/jquery-1.js.下载"></script>
	<script src="./修改资料_files/gVerify.js.下载"></script>
	<script src="./修改资料_files/index.js.下载"></script>

	<script src="./修改资料_files/jquery.js.下载"></script>
	<script type="text/javascript">
		$(function() {

			var sex = '';
			$("input[name='sex']").each(function(i, obj) {
				//obj是dom对象     不是jquery对象
				//alert(obj+","+i);
				//alert(obj.value+","+sex);
				if ($(obj).val() == sex) {
					// obj.checked=true;
					$(obj).attr("checked", true);
				}
			});

			var address = ''; //""  河南-郑州

			if (null != address && address != "") {
				var arr = address.split("-");

				$("#city").citySelect({
					prov : arr[0], //默认省份
					city : arr[1], //默认城市
					nodata : "none"
				});
			} else {
				$("#city").citySelect({
					prov : "河南", //默认省份
					city : "郑州", //默认城市
					nodata : "none"
				});
			}

		});

		function commitForm() {

			var address = $("#prov").val() + "-" + $("#city").val();

			$("#address").val(address);

			// $("form").commit();
			return true;
		}
	</script>


</body>
</html>