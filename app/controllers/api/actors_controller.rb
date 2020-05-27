class Api::ActorsController < ApplicationController

  def actor_action 
    @person = Actor.find_by(id:2)
    render "actor.json.jb"
  end 

end
