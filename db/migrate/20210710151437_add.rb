class Add < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :author_id, :integer
  end
end
