﻿/**
 * 기본상수
 */
const __ServerURL = "";
const __ServerNotConnectMSG = "서버 연결 대기 시간이 초과되었습니다.";
const __Socket_URL = "";
const __Report_URL = "";

jQuery.support.cors = true;

/**
 * 회원확인
 */
let Global = {};

/**
 * 문자열을 전화번호 형식으로 반환 (000-0000-0000)
 * @param str
 */
function getTelFormat(str) {
	if (str.length === 8) {
		return str.replace(/^(1599)-?([0-9]{4})$/, "$1-$2");
	}
	else {
		return str.replace(/^(01[0126789]{1}|02|1599|0[3-9]{1}[0-9]{1}|0507)-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");
	}
}

/**
 * 아이디 유효성 검사
 * 3자 이상, 20자 이하
 * 영문, 숫자, 특수문자( _ - . )
 * @param {*} str 
 */
function IDCheck(str) {
	if (str.length < 3 || str.length > 20) {
		return false;
	}

	return /^[0-9A-Za-z\-_\.]+$/.test(str);
}

/**
 * 숫자형식 날짜 문자열을 날짜형식 문자열로 변환
 * @param str
 * @returns {string}
 */
function dateSetFormat(str) {
	if (!str) return "";
	str = String(str);
	str = str.Trim();

	if (str.isNum() === false) {
		str = "";
	}
	else {
		if (str.length === 8) {
			str = str.substring(0,4) + "-" + str.substring(4,6) + "-" + str.substring(6,8);
		}
		else if (str.length === 12) {
			str = str.substring(0,4) + "-" + str.substring(4,6) + "-" + str.substring(6,8) + " " + str.substring(8,10) + ":" + str.substring(10,12);
		}
		else if (str.length === 14) {
			str = str.substring(0,4) + "-" + str.substring(4,6) + "-" + str.substring(6,8) + " " + str.substring(8,10) + ":" + str.substring(10,12) + ":" + str.substring(12,14);
		}
	}

	return str;
}