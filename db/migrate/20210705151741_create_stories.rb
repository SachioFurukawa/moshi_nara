class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :sentence
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
