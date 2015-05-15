class AddPosterToMovies2 < ActiveRecord::Migration
  def change
    add_column :movies2s, :poster, :string
  end
end
