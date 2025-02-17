package com.test.web.domains;

import java.sql.Timestamp;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;
/**
 * @FileName : ${file_name}
 * @Project : 회원 전용 게시판
 * @Date : ${date}
 * @작성자 : aluaw
 * @설 명 : 게시글 DTO
 */
@Component @Lazy
@Data
public class Board {
	private Integer postIdx;
	private String postTitle;
	private String postContent;
	private String imgFile;
	private Timestamp insertDate;
	private Timestamp updateDate;
	private String tagContent;
	private Boolean postLike;
	private Integer postLikeCount;
	private Integer commentCount;
}
