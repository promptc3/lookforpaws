class AddAvatarToPaws < ActiveRecord::Migration[5.0]
   def up
    add_attachment :paws, :avatar
  end

  def down
    remove_attachment :paws, :avatar
  end
end
