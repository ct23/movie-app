class Api::PagesController < ApplicationController
  def get_actor_action
    id = params['id']               # Find ID passed in as parameter, and save as local variable id
    @actor = Actor.find_by(id: id)  # Set actor instance variable to the actor matching ID parameter
    # Then pass to view
    render 'indiv_actor.json.jb'
  end
end
