class AddLoveToPaws < ActiveRecord::Migration[5.0]
  def change
  	add_column :paws, :love, :integer, default: 1
  end
end
