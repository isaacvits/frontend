package frontend.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import frontend.model.Movie;

@RestController
public class MovieController {

	@RequestMapping(value = "/moviesNowPlaying", method = RequestMethod.GET, headers = "Accept=application/json")
	public List moviesNowPlaying() {
		List listOfMoviesDestaque = new ArrayList<Movie>();
		for(int i = 0; i < 8; i++) {
			Movie m = new Movie();
			m.setTitle("Test"+i);
			m.setImdbId(""+i);
			m.setImdbVotes(100+i);
			m.setImdbRating(""+i);
			m.setPoster("http://www.imdb.com/title/tt1825683/mediaviewer/rm172972800");
			m.setListGenres("Action");
			m.setYear(""+2000+i);
			listOfMoviesDestaque.add(m);
		}
		return listOfMoviesDestaque;
	}
	
	@RequestMapping(value = "/getListMovieDiscovery", method = RequestMethod.GET, headers = "Accept=application/json")
	public List getListMovieByTitle()
	{
		List listOfMoviesDestaque = new ArrayList<Movie>();
		for(int i = 0; i < 8; i++) {
			Movie m = new Movie();
			m.setTitle("Test"+i);
			m.setImdbId(""+i);
			m.setImdbVotes(100+i);
			m.setImdbRating(""+i);
			m.setPoster("http://www.imdb.com/title/tt1825683/mediaviewer/rm172972800");
			m.setListGenres("Action");
			m.setYear(""+2000+i);
			listOfMoviesDestaque.add(m);
		}
		return listOfMoviesDestaque;
	}
}
