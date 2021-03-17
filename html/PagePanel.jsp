<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");
	response.setDateHeader("Expires",0);
	if (request.getProtocol().equals("HTTP/1.1")) response.setHeader("Cache-Control", "no-cache");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>허수아비</title>
	<link rel="stylesheet" type="text/css" href="/sweetalert/sweetalert.css?v=1.0" />
	<style type="text/css">
		#contents {position:relative; width:100%; height:calc(100% - 50px);}
	</style>
</head>

<body>

<div class="wrap">
	<div class="contents">
		<p>허수아비 이제 만들어가면 됨 ^^!!</p>
	</div>
</div>

<script type="text/javascript" src="/scripts/LAB.min.js?v=1.0"></script>
<script type="text/javascript">
	const pageLoaderOption = {
		pageLogic: ["PagePanel.js"]
	};
</script>
<script type="text/javascript" src="/scripts/common.js?v=1.0"></script>
<script type="text/javascript">
	function Application_Init() {
		PagePanel.Init();
	}
</script>

</body>

</html>