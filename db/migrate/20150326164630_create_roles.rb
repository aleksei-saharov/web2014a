class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :current_user_id
      t.integer :head_role_id
      t.integer :department_id

      t.string :role_name
      t.text :role_description

      t.timestamps
    end
  end
end
