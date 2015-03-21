class CreateScheduleDayOfficials < ActiveRecord::Migration
  def change
    create_table :schedule_day_officials do |t|

      t.timestamps
    end
  end
end
