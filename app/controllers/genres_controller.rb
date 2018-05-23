# This class describes the interface between genre data and the view.
class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(params_strong_version(:name))
    redirect_to genre_path(@genre)
  end
  
  def show
    @genre = getgenre
  end

  def edit
    @genre = getgenre
  end

  def update
    @genre = Genre.create(params_strong_version(:name))
    redirect_to genre_path(@genre)
  end



  private

  def params_strong_version(*args)
    params.require(:genre).permit(*args)
  end

  def getgenre
    Genre.find(params[:id])
  end
end
