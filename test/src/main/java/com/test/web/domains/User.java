package com.test.web.domains;

import java.sql.Timestamp;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;
/**
 * @FileName : ${file_name}
 * @Project : 회원 관리
 * @Date : ${date}
 * @작성자 : aluaw
 * @설 명 : 회원 DTO
 * userIdx : 회원번호
 * userId : 회원ID
 * userPassword : 회원 비밀번호
 * userEmail : 회원 이메일
 * insertDate : 입력일
 * updateDate : 수정일
 */
@Component
@Data @Lazy
public class User {
	private Integer userIdx;
	private String userId;
	private String userPassword;
	private String userEmail;
	private Timestamp insertDate;
	private Timestamp updateDate;
}