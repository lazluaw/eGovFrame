package com.test.web.proxies;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.test.web.mappers.TxMapper;

@Component //("user") //다른데선 user라는 객체 이름으로 써야만 진입 가능(manager이 될 수도 있음)
public class UserProxy extends Proxy {
	@Autowired TxMapper txMapper;
	
	//통계
	//더미데이터로 만들 걸 이렇게 만들고 메서드를 계속 돌리면 계속 생성됨
	public String makeBirthday() {
		String birthday = "";
		return birthday;
	}
	
	public String makeGender() {
		List<String> genderText = Arrays.asList("M", "F");
		Collections.shuffle(genderText); //섞임
		return genderText.get(0);
	}
	
	public String makeUserId() {
		List<String> userIdText = Arrays.asList("a", "b"); //아이디에 맞는 문자열을 한땀한땀 넣어서 하기
		Collections.shuffle(userIdText);
		return userIdText.get(0);
	}

	public String makeName() {
		return "";
	}
	
	public String makeTelephone() {
		return "";
	}
}
