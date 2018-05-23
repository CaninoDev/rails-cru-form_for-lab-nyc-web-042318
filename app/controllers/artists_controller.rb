# This class defines the methods that interfaces between data and
# the view.
class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params_strong_version(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def show
    @artist = getartist
  end

  def edit
    @artist = getartist
  end

  def update
    @artist = Artist.create(params_strong_version(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def params_strong_version(*args)
    params.require(:artist).permit(*args)
  end

  def getartist
    Artist.find(params[:id])
  end
end
