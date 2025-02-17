package com.qas.web.domains;

import java.sql.Timestamp;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component @Lazy
public class UserDTO {
	private Integer userIdx;
	private String userId;
	private String userPassword;
	private String userEmail;
	private Timestamp insetDate;
	private Timestamp updateDate;
}
