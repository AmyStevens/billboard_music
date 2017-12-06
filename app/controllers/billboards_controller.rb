class BillboardsController < ApplicationController
  def index
    def index
      @billboards = billboard.all
    end

    def show
      @billboard = Billboard.find(params[:id])
    end

    def new
      @billboard = Billboard.new
    end

    def create
      @billboard = Billoard.new(song_params)

    if @billboard.save
      redirect_to songs_path
    else
      render :new
    end
    end

    def update
      if @billboard.update(song_params)
        redirect_to @billboard

      else
        render :edit
      end

    def edit
        @billboard = Billboard.find(params[:id])
      end

    def destroy
      @billboard.destroy
      redirect_to songs_path
    end

end
