class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.datetime :day
      t.datetime :arrival
      t.datetime :departure
      t.datetime :out
      t.string :toggle_time

      t.timestamps
    end
  end
end
