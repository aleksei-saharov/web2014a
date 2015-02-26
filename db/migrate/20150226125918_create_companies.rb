class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :companyName
      t.string :createdBy

      t.timestamps
    end
  end
end
