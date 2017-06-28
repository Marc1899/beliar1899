class CreateTopmovies < ActiveRecord::Migration[5.0]
  def change
    create_table :topmovies do |t|
      t.string :name
      t.integer :stars
      t.integer :year
      t.integer :ranking

      t.timestamps
    end
  end
end
