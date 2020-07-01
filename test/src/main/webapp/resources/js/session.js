"use strict";
function Session(x) { //선언식, home의 app.init("${context}")에서 옴???
	sessionStorage.setItem('context', x) //외부에서 들어온 값이 ctx로 정의됨
	sessionStorage.setItem('javascript', x+'/resources/js')
	sessionStorage.setItem('css', x+'/resources/css')
	sessionStorage.setItem('image', x+'/resources/img')
}