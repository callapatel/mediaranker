class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(params.require[:movie].permit(:name, :director, :description, :ranking))
      redirect_to "/"
    else
      render :edit
    end
  end

  def details
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie = Movie.all.find(params[:id])
    @movie.destroy
  end

  def create
    @movie.new(params.require[:movie].permit(:name, :director, :description, :ranking))
    if @movie.save
      redirect_to "/"
    else
      render :new
    end
  end

  def new
    @movie = Movie.new
  end


end