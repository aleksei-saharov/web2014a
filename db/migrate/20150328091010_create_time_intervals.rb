class CreateTimeIntervals < ActiveRecord::Migration
  def change
    create_table :time_intervals do |t|
      t.integer :used_in_day_mask #пример: у нас 4 рабочих дня в периоде и этот промежуток НЕ используется во 2-й день, тогде used_in_day_mask = 1011
      t.time :arrival
      t.time :departure
      t.boolean :need_notification # для отключения уведомлений при объединении нескольких промежутков в одном дне (ночные смены, обеденные перерывы и прочее)
    end
  end
end
