class CreateTimeIntervalForTemplates < ActiveRecord::Migration
  def change
    create_table :time_interval_for_templates do |t|
      t.integer :used_in_day_mask #пример: у нас 4 рабочих дня в периоде и этот промежуток НЕ используется во 2-й день, тогде used_in_day_mask = 1011
    end
  end
end
