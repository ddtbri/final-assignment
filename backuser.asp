<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%><!DOCTYPE html>
<html>
<head>
	<title>后台管理</title>
	<meta charset="utf-8">
	<style type="text/css">
	*{
		margin: 0;
		padding:0;
		box-sizing: border-box;
	}

	body{
		background-color: skyblue;
	}
		.outer{
			position: absolute;
			width: 450px;
			height: 200px;
			/*margin: 150px auto auto 400px;*/
			margin-top:50px; 
			margin-left: 460px; 
			float: left;
			padding: 5px;
			/*border:1px solid;*/
			border-radius: 5px;
		}

		.inner{
			cursor: pointer;
			width: 90px;
			height: 40px;
			border:1px solid;
			float: left;
			font-size: 16pt;
			text-align: center;
			line-height: 40px;
			margin-left: 10px; 
			border-radius: 5px;


		}
	</style>
</head>
<body>
<div class="outer">
	<h1 style="margin-bottom: 20px;margin-left: 130px;">后台管理</h1>
	<div id="add" class="inner">添加商品</div>
	<div id="sub" class="inner">删除商品</div>
	<div id="change" class="inner">修改商品</div>
	<div id="view" class="inner">查看评价</div>
</div>
</body>
</html>