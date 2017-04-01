class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.text :body
      t.belongs_to :paw, foreign_key: true

      t.timestamps
    end
  end
end
