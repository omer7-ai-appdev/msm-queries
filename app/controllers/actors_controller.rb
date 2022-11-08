class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({  :template => "actor_templates/index.html.erb" })
  end

  def show
    @an_id = params.fetch("an_id")
    matching_actors = Actor.where({ :id => @an_id })
    @the_actor = matching_actors.at(0)
    @filmography = Movie.where({ :id => @the_director})

    
    render({ :template => "actor_templates/show.html.erb" })

  end
end
