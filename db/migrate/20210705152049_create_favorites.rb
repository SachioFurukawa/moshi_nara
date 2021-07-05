class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :author_id
      t.integer :title_id
      t.integer :sentence_id

      t.timestamps
    end
  end
end
