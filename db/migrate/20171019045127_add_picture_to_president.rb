class AddPictureToPresident < ActiveRecord::Migration[5.1]
  def up
    add_attachment :presidents, :picture
  end

  def down
    remove_attachment :presidents, :picture
  end
end
