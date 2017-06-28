class ComentariosController < ApplicationController
	
def index
	@comentarios = Comentario.all
end

def show
	@comentario = Comentario.find(params[:id])
end

def new
@comentario = Comentario.new
end

# CREATE
def create
@pelicula = Pelicula.find(params[:pelicula_id])
@comentario = @pelicula.comentarios.create(comentario_params)
redirect_to pelicula_path(@pelicula)
end

# DESTROY
def destroy
@pelicula = Pelicula.find(params[:pelicula_id])
@comentario = @pelicula.comentarios.find(params[:id])

@comentario.destroy
redirect_to pelicula_path(@pelicula)
end

def edit
@comentario = Comentario.find(params[:id])
end

def update
@comentario = Comentario.find(params[:id])

if @comentario.update_attributes(comentario_params)
redirect_to comentarios_path
else
render :edit
end
end

private
def comentario_params
params.require(:comentario).permit(:name, :comment)
end

