class RemoveColumnsInStories < ActiveRecord::Migration[5.2]
  def change
    remove_column :stories, :sentence, :text
  end
end
