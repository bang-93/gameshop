package kr.co.gameshop.vo;

import lombok.Data;

@Data
public class Game {
	private int game_id;
	private String game_title;
	private String game_img;
	private String game_price;
	private String game_content;
	private String game_genre;
	private String game_date;
	private String game_capacity;
}
