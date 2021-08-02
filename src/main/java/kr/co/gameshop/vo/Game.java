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
	
//	public String toString() {
//		return "Game [game_id" + game_id+
//											", game_title"+game_title+
//											", game_img"+game_img+
//											", game_price"+game_price+
//											", game_content"+game_content+
//											", game_genre"+game_genre+
//											", game_date"+game_date+
//											", game_capacity"+game_capacity+"]";
//	}
}
