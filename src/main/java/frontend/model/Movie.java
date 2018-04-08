package frontend.model;

//import android.graphics.Bitmap;


/**
 * Created by vitor on 21/05/17.
 */

public class Movie {
	
	private String imdbId;
	private String title;
	private String year;
	private String listGenres;
    private String poster;
	private String imdbRating;
	private Integer imdbVotes;

	public Movie() {

	}

	public String getListGenres() {
		return listGenres;
	}

	public void setListGenres(String listGenres) {
		this.listGenres = listGenres;
	}
	
	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}


	public String getImdbRating() {
		return imdbRating;
	}

	public void setImdbRating(String imdbRating) {
		this.imdbRating = imdbRating;
	}

	public Integer getImdbVotes() {
		return imdbVotes;
	}

	public void setImdbVotes(Integer imdbVotes) {
		this.imdbVotes = imdbVotes;
	}

	public String getImdbId() {
		return imdbId;
	}

	public void setImdbId(String imdbId) {
		this.imdbId = imdbId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getYear() {
		return year;
	}

	public void setYear(String releaseDate) {
		this.year = releaseDate;
	}
}
