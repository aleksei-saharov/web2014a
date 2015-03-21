class CreateScheduleTemplates < ActiveRecord::Migration
  def change
    create_table :schedule_templates do |t|
      t.string :name
      t.datetime :arrival
      t.datetime :departure
      t.boolean :mon
      t.boolean :tue
      t.boolean :wed
      t.boolean :thu
      t.boolean :fri
      t.boolean :sat
      t.boolean :sun
      t.datetime :lunch_start
      t.datetime :lunch_end

      t.timestamps
    end
  end
end
