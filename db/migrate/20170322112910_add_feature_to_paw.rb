class AddFeatureToPaw < ActiveRecord::Migration[5.0]
  def change
    add_column :paws, :name, :string
    add_column :paws, :gender, :string
    add_column :paws, :breed, :string
    add_column :paws, :dob, :datetime
    add_column :paws, :dod, :datetime
  end
end
