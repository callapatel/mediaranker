class AlbumsController < ApplicationController


  def index
    @albums = Album.all
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
       if @album.update(params.require(:album).permit(:name, :artist, :description, :rank))
         redirect_to root_path
       else
         render :edit
       end
  end

  def details
    @album = Album.find(params[:id])
  end

  def destroy
    @album = Album.all.find(params[:id])
    @album.destroy
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params.require(:album).permit(:name, :artist, :description, :rank))
    if @album.save
      redirect_to root_path
    else
      render :new
    end
  end

  def upvote
    @album = Album.find(params[:id])
    Album.increment_counter(:rank, @album)
     redirect_to root_path

  end



end
