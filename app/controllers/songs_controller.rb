class SongsController < ApplicationController
  def index
    def index
      @songs = Song.all
    end

    def show
      @song = Song.find(params[:id])
    end

    def new
      @song = song.new
    end

    def create
      @song = Song.new
    end

    def edit
        @song = Song.find(params[:id])
      end
end
