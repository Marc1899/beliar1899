class StaticsController < ApplicationController
	skip_before_action :authenticate_user!

 def index
  	 @peliculas = Pelicula.all
 
   if params[:search]
  	@peliculas = Pelicula.search(params[:search]).order("created_at DESC")
   else
  	@peliculas = Pelicula.all.order('created_at DESC')
   end
  end

  def about
  end
end
