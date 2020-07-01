package com.qas.web.domains;

import java.sql.Timestamp;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component @Lazy
public class BoardDTO {
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
