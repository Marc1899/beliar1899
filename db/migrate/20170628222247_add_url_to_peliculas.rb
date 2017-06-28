class AddUrlToPeliculas < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :url, :text
  end
end
