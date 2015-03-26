class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :email
      t.string :roleName
      t.datetime :comeInTime
      t.datetime :comeOutTime
      t.datetime :lunchStart
      t.datetime :lunchEnd

      t.timestamps
    end
  end
end
