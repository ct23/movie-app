class Api::MovieGenresController < ApplicationController

  def create
    @movie_genre = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
    if @movie_genre.save
      render json: { message: "success!", movie_genre: @movie_genre }
    else
      render json: { errors: @movie_genre.errors.full_messages }
    end
  end

end
