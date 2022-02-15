class ActorController < ApplicationController

  def index
@list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  end

def actor_details

  #params {"an_id"=>"1"}

  the_id = params.fetch("an_id")

  @the_actor = Actor.where({:id => the_id}).first
  
  @a_id = @the_actor.id

  @matching_characters = Character.where({ :actor_id => @a_id })

  #@matching_characters.movie_id

  #@filmography = Character.where({ :movie_id => @matching_characters })
  
  #Movie.where({:_id => @the_director })

 

  render({ :template => "actor_templates/show.html.erb"})

end
end