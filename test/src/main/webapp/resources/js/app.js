"use strict"
var app = app || {}
app = (()=>{
	return {init}
})();
function init(x) { // 표현
	$.getScript(x+'/resources/js/session.js', () => { //x: 경로, ()=> 콜백, 경로를 찾아가서 session을 가라.
		new Session(x) // 선언한 이유? 공간을 만들어줘야 해서
	})
}