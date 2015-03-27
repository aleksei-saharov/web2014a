class CreateScheduleTemplates < ActiveRecord::Migration
  def change
    create_table :schedule_templates do |t|
      t.date :start_working_since_day
      t.integer :number_of_working_days # если не используется: -1
      t.integer :number_of_days_off # если не используется: -1
      t.integer :boolean_week # <127 если не используется: -1, иначе 1-пн 2-вт 4-ср 8-чт 16-пт 32-сб 64-вс (те например пн-ср-пт=1+4+16=21)
      t.boolean :working_holidays # если не работает по праздникам: 0, иначе 1
      t.time :arrival
      t.time :departure
      t.boolean :need_notification # для отключения уведомлений при объединении нескольких шаблонов в одном дне (ночные смены, обеденные перерывы и прочее)
      t.boolean :is_confirmed # подтвержден "сверху" или просто можем ли мы его использовать для составления оф расписания
      t.timestamps
    end
  end
end
