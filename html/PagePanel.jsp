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
	<link rel="stylesheet" type="text/css" href="/css/PagePanelStyle.css?v=1.0" />
</head>

<body>
	<ul id="menu">
		<li data-menuanchor="firstPage" class="active"><a href="#firstPage">Recording</a></li>
		<li data-menuanchor="secondPage"><a href="#secondPage">Local</a></li>
		<li data-menuanchor="3rdPage"><a href="#3rdPage">Server</a></li>
	</ul>


	<div id="fullpage">
		<div class="section " id="section0">
			<h1>녹음하기</h1>
			<p>버튼을 눌러 녹음 후 저장</p>
			<button class="default">녹음하기</button>
			<br><br>
			<div class="afterRec">
				<input type="text" id="recName"/>&nbsp;&nbsp;
				<button class="warning" id="recSave">저장</button>
			</div>
<%--			<p class="introimg">&darr;&#9636;&darr;</p>--%>
		</div>

		<div class="section active" id="section1">
			<div class="slide active" id="slide1">
				<div class="intro">
					<h1>내 소리함</h1>
					<p>내 디바이스에 저장된 녹음</p>
				</div>

				<div class="localSounds">
					<div class="sound">
						<span>rec Name 1 </span>
						<button class="success" id="localPlay1">듣기</button>
						<button class="warning" id="localDel1">삭제</button>
					</div>
					<div class="sound">
						<span>rec Name 2</span>
						<button class="success" id="localPlay2">듣기</button>
						<button class="warning" id="localDel2">삭제</button>
					</div>
				</div>
			</div>
			<div class="slide " id="slide2">
				<h1>Slide 2</h1>
				<p>You can also scroll left or right on this screen</p>
			</div>
			<div class="slide" id="slide3">
				<h1>Slide 3</h1>
			</div>
		</div>

		<div class="section" id="section2">
			<div class="intro">
				<h1>서버 소리함</h1>
				<p>서버에 저장된 녹음</p>
			</div>
			<div class="serverSounds">
				<div class="sound">
					<span>rec Name 1 </span>
					<button class="success" id="serverPlay1">듣기</button>
					<button class="warning" id="serverDel1">삭제</button>
				</div>
				<div class="sound">
					<span>rec Name 2</span>
					<button class="success" id="serverPlay2">듣기</button>
					<button class="warning" id="serverDel2">삭제</button>
				</div>
			</div>
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