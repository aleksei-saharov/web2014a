class CreateScheduleDayOfficials < ActiveRecord::Migration
  def change
    create_table :schedule_day_officials do |t|
      t.datetime :arrival
      t.datetime :departure
      t.datetime :lunch_start
      t.datetime :lunch_end

      t.timestamps
    end
  end
end
