class CreateTimeIntervals < ActiveRecord::Migration
  def change
    create_table :time_intervals do |t|
      t.integer :user_id
      
     end
  end
end
