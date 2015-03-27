class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.text :description
      t.integer :head_of_department_id


      t.timestamps
    end
  end
end
