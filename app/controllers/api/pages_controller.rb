class Api::PagesController < ApplicationController
  def index
    @actors = Actor.all
    render 'index_actor.json.jb'
  end
  
  def show
    id = params['id']               # Find ID passed in as parameter, and save as local variable id
    @actor = Actor.find_by(id: id)  # Set actor instance variable to the actor matching ID parameter
    # Then pass to view
    render 'indiv_actor.json.jb'
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age]
    )
    if actor.save
      render 'indiv_actor.json.jb'
    else
      render json: { errors: @movie.errors.full_messages }, status: 422
    end
  end
  
  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age
    if (@actor.save)
      render 'indiv_actor.json.jb'
    else
      render json: { errors: @actor.errors.full_messages }, status: 422
    end
  end

  def destroy
    id = params[:id]
    @actor = Actor.find_by(id: id)
    @actor.destroy
    render json: {message: "Actor ID " + id + " deleted."}
  end
end
