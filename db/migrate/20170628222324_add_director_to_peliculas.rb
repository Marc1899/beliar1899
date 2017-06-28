class AddDirectorToPeliculas < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :director, :string
  end
end
