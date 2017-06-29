class SelectMoviesController < ApplicationController
	before_action :authenticate_user!
  def index
        @peliculas = Pelicula.all
        if params[:search]
         @peliculas = Pelicula.search(params[:search])
        elsif params[:search_year]
         @peliculas = Pelicula.search_year(params[:search_year])
     elsif params[:search_genre]
     @peliculas = Pelicula.search_genre(params[:search_genre]).order("created_at DESC")
    end      
  end
