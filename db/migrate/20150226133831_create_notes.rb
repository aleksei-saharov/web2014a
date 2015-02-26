class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :userId
      t.datetime :day
      t.datetime :arrival
      t.datetime :departure
      t.datetime :out
      t.string :toggleTime

      t.timestamps
    end
  end
end
