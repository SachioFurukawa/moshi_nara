class AddColumnsToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :story_id, :integer
  end
end
