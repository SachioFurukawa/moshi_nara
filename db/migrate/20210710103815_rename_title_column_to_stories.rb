class RenameTitleColumnToStories < ActiveRecord::Migration[5.2]
  def change
    rename_column :stories, :title, :title_1
    add_column :stories, :title_2, :string
  end
end
