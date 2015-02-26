class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :departmentName
      t.string :headOfDepartment

      t.timestamps
    end
  end
end
