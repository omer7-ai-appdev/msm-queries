class MoviesController < ApplicationController

  def index
     @list_of_movies = Movie.all

    render({ :template => "movie_templates/index.html.erb" })

  end

  def show

    render({ :template => "movie_templates/show.html.erb" })
  end

end
