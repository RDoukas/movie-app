class Api::ActorsController < ApplicationController


  def query_actor_action 
    @movie = Actor.find(params[:id])
    render "actor.json.jb"
  end 

  def segment_actor_action 
    @movie = Actor.find(params[:id])
    render "actor.json.jb"
  end 

  def body_action 
    @movie = Actor.find(params[:id])
    render "actor.json.jb"
  end 

  

end
