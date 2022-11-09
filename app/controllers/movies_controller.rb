class MoviesController < ApplicationController

  def index
     @list_of_movies = Movie.all

    render({ :template => "movie_templates/index.html.erb" })

  end

  def show
    @an_id = params.fetch("an_id") 
     matching_movies = Movie.where({ :id => @an_id })
     @the_movie = matching_movies.at(0)
     d_id = @the_movie.director_id 
     @director = Director.where({ :id => d_id }).at(0)

    render({ :template => "movie_templates/show.html.erb" })
  end

end
