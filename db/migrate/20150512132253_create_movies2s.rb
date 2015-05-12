class CreateMovies2s < ActiveRecord::Migration
  def change
    create_table :movies2s do |t|
      t.string :name
      t.text :description
      t.integer :genre_id
      t.integer :actor_id

      t.timestamps
    end
  end
end
