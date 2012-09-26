class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
     t.string :login, :limit => 20
      t.string :user_type, :limit => 45
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :perishable_token
      t.string :first_name, :limit => 45
      t.string :last_name, :limit => 45
      t.string :email, :limit => 60
      t.string :answer
      t.boolean :is_active, :limit => 4
      t.integer :security_question_id
      t.timestamps
    end
  end
end
