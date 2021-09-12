package com.shivani.servlet.Model;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class ImdbScraperModel {

	public static Elements processData(String url) {
		Elements trElement = null;
		try {
			Document document = Jsoup.connect(url).timeout(6000).get();
			trElement = document.select("tbody.lister-list").select("tr");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return trElement;
	}
}
