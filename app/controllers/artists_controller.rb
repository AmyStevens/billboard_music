class ArtistsController < ApplicationController
  def index
    def index
      @artists = Artist.all
    end

    def show
      @artist = Artist.find(params[:id])
    end

    def new
      @artist = Artist.new
    end

    def create
      @artist = Artist.new(song_params)

    if @artist.save
      redirect_to artists_path
    else
      render :new
    end
    end

    def update
      if @artist.update(song_params)
        redirect_to @artist

      else
        render :edit
      end

    def edit
        @artist = Artist.find(params[:id])
      end

    def destroy
      @artist.destroy
      redirect_to songs_path
    end

end
