class AddColumnsInSentences < ActiveRecord::Migration[5.2]
  def change
    add_column :Sentences, :story_id, :integer
  end
end
