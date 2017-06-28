class CreatePeliculas < ActiveRecord::Migration[5.0]
  def change
    create_table :peliculas do |t|
      t.string :name
      t.integer :stars
      t.string :main_actor
      t.integer :year

      t.timestamps
    end
  end
end
