class AddRatingToMovies2 < ActiveRecord::Migration
  def change
    add_column :movies2s, :rating, :string
  end
end
