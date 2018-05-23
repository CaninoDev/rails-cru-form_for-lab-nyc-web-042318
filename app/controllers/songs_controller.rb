# This class describes the interface between song data and the view.
class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(params_strong_version(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
    @song = getsong
  end

  def update
    @song = Song.create(params_strong_version(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def show
    @song = getsong
  end

  private

  def params_strong_version(*args)
    params.require(:song).permit(*args)
  end

  def getsong
    Song.find(params[:id])
  end
end
