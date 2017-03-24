class RemoveAbouts < ActiveRecord::Migration[5.0]
  def up
  	drop_table :abouts
  end
end
