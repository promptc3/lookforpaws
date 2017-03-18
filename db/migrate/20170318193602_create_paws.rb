class CreatePaws < ActiveRecord::Migration[5.0]
  def change
    create_table :paws do |t|

      t.timestamps
    end
  end
end
