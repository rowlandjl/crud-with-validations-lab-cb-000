class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
  end

  def udpate
  end

  def destroy
  end

  private

  def song_params
    params.permit(:title, :released, :release_year, :artist_name, :genre)
  end

  def set_song
    @song = Song.find(params[:id])
  end 

end
