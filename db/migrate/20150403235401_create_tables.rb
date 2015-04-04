class CreateTables < ActiveRecord::Migration
  def change
    create_table :days_schedules do |t|
    t.belongs_to :role, index: true, :null => false
    t.belongs_to :user, index: true, :null => false
    t.belongs_to :working_days_calendar, index: true, :null => false
    t.time :schedule_time_start, :null => false
    t.time :schedule_time_end, :null => false
    t.time :real_time_start
    t.time :real_time_end
    t.time :lunch_time_start
    t.time :lunch_time_end
    
    t.timestamps
    end
    create_table :working_days_calendars do |t|
      t.date :date, :null => false
      t.boolean :working_day_flag, :null => false
      
      t.timestamps
    end
  end
end