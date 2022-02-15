class ActorController < ApplicationController

  def index
@list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  end

def actor_details

  #params {"an_id"=>"1"}

  the_id = params.fetch("an_id")

  @the_actor = Actor.where({:id => the_id}).first
  #@filmography = Characters.where({:actor_id => @the_actor })


  render({ :template => "actor_templates/show.html.erb"})

end
end