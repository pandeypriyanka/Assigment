class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.boolean :is_featured, :default=>false

      t.timestamps
    end
  end
end
