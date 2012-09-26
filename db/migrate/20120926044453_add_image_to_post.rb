class AddImageToPost < ActiveRecord::Migration
  def up
    add_column :posts, :cover_image_name, :string
    add_column :posts, :cover_image_uid, :string
  end

  def down
    remove_column :posts, :cover_image_name
    remove_column :posts, :cover_image_uid
  end
end
