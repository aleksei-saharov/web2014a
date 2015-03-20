class CreateCookies < ActiveRecord::Migration
  def change
    create_table :cookies do |t|
      t.text :email
      t.text :hash

      t.timestamps
    end
  end
end
