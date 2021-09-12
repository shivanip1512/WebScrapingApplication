package com.shivani.servlet.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.shivani.servlet.Model.ImdbScraperModel;

@WebServlet("/webScapper")
public class WebScapper extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getParameter("url");// "https://www.imdb.com/india/top-rated-indian-movies/";

		Elements trElements = ImdbScraperModel.processData(url);

		List movieTitle = new ArrayList();
		List rating = new ArrayList();

		for (Element tr : trElements) {
			movieTitle.add(tr.select("td.titleColumn > a").text());
			rating.add(tr.select("td.imdbRating").text());
		}

		request.setAttribute("movieTitle", movieTitle);
		request.setAttribute("rating", rating);

		RequestDispatcher rd = request.getRequestDispatcher("View.jsp");
		rd.forward(request, response);
	}

}
