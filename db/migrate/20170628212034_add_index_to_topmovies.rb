class AddIndexToTopmovies < ActiveRecord::Migration[5.0]
  def change
    add_column :topmovies, :index_id, :integer
    add_index :topmovies, :index_id
  end
end
