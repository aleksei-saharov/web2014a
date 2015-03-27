class CreateScheduleDayOfficials < ActiveRecord::Migration
  def change
    create_table :schedule_day_officials do |t|
      t.date :day
      t.time :arrival
      t.time :departure
      t.time :lunch_start
      t.time :lunch_end

      t.timestamps
    end
  end
end
