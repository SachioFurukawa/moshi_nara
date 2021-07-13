class AddColumnsToSentences < ActiveRecord::Migration[5.2]
  def change
    add_column :sentences, :author_id, :integer
  end
end
