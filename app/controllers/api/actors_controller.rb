class Api::ActorsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @actors = Actor.all
    render "actors_index.json.jb"
  end 

  def show
    @actor = Actor.find(params[:id])
    render "actors_show.json.jb"
  end 

  def create 
    @actor = Actor.new(
      user_id: current_user.id,
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
    )
    if @actor.save
      render "actors_show.json.jb"
    else 
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end 
  end 

  def update 
    @actor = Actor.find_by(id: params[:id])

    if @actor.user_id == current_user.id

      @actor.first_name = params[:first_name] || @actor.first_name
      @actor.last_name = params[:last_name] || @actor.last_name
      @actor.last_name = params[:last_name] || @actor.last_name
      @actor.known_for = params[:known_for] || @actor.known_for
      @actor.age = params[:age] || @actor.age
      @actor.gender = params[:gender] || @actor.gender
      
      if @actor.save
        render "actors_show.json.jb"
      else 
        render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
      end 
    end
  end   
  
  def destroy 
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy
    render json: {message: "You've successfull deleted the actor"}
  end 


end
