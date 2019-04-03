# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  def create
    params.require(:movie)
    params[:movie].permit(:title,:rating,:release_date)
    # shortcut: params.require(:movie).permit(:title,:rating,:release_date)
    # rest of code...
  end
  end
end