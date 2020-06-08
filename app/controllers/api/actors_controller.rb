class Api::ActorsController < ApplicationController


  def index
    @actors = Actor.all.order(age: :desc)
    render "actors_index.json.jb"
  end 

  def show
    @actor = Actor.find(params[:id])
    render "actors_show.json.jb"
  end 

  def create 
    @actor = Actor.new(
      id: params[:id],
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    if @actor.save
      render "actors_show.json.jb"
    else 
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end 
  end 

  def update 
    @actor = Actor.find(params[:id])
    @actor.id = params[:id] || @actor.id
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.age = params[:age] || @actor.age
    @actor.gender = params[:gender] || @actor.gender
    @actor.created_at = params[:created_at] || @actor.created_at
    @actor.updated_at = params[:updated_at] || @actor.updated_at

    
    if @actor.save
      render "actors_show.json.jb"
    else 
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end 
  end   
  
  def destroy 
  @actor = Actor.find(params[:id])
  @actor.destroy
  render json: {message: "You've successfull deleted the actor"}
  end 


end
