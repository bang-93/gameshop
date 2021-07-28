package co.kr.vo;

import lombok.Data;

@Data
public class Board {
	private int board_id;
	private String board_title;
	private String board_writer;
	private String board_content;
	private String board_date;
}
