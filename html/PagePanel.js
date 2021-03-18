const PagePanel = {

	Init: function () {
		$(document).ready(function() {
			$(`#fullpage`).fullpage({
				sectionsColor: ['#1bbc9b', '#4BBFC3', '#7BAABE', 'whitesmoke', '#ccddff'],
				anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage', 'lastPage'],
				menu: '#menu',
			});
		});

		this.EventBind();
	},

	EventBind: function (){

	},


	/**
	 * User Mobile Device Info Update
	 */
	SaveDeviceToken: function () {
		__GetDeviceID(function (deviceType, deviceToken) {
			// deviceType
			//   A : Android
			//   I : iOS
		});
	},

	/**
	 * 이전페이지로 이동
	 */
	Back: function (cnt) {
		// if (typeof (cnt) != "number") cnt = 1;
		// this.pageLib.PageBack(cnt);
	},

	/**
	 * 현재페이지 새로고침
	 */
	Reload: function () {
		// this.pageLib.Reload();
	},

	/**
	 * 현재페이지 메뉴아이디 가져오기
	 */
	ViewMenuID: function () {
		// return this.pageLib.ViewMenuID();
	},

	/**
	 * 현재 페이지 패널 가져오기
	 */
	ViewPanel: function () {
		// return this.pageLib.ViewPanel();
	},

	ViewIndex: function() {
		// return this.pageLib.ViewIndex();
	},

	SetHeaderStyle: function(isMain) {
		// isMain = (typeof(isMain) === "boolean") ? isMain : false;
		//
		// if (isMain) {
		// 	this.$header.addClass("main");
		// 	this.$header.find("div.btn_wrap > button.mute").show();
		// 	this.$header.find("div.btn_wrap > button.notice").show();
		// 	this.$custList.show();
		// }
		// else {
		// 	this.$header.removeClass("main");
		// 	this.$header.find("div.btn_wrap > button.mute").hide();
		// 	this.$header.find("div.btn_wrap > button.notice").hide();
		// 	this.$custList.hide();
		// }
	},

	/**
	 * Socket Client 연결
	 */
	SocketConnenct: function() {
		var oThis = this;

		this.socket = io.connect( __Socket_URL, { transports: ['websocket'] });

		this.socket.on("connect", function() {
			console.log("socket.io", "connect");
			oThis.socket.emit("/key", Global.KEY);
		});
	}
};