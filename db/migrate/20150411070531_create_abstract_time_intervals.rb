class CreateAbstractTimeIntervals < ActiveRecord::Migration
  def change
    create_table :abstract_time_intervals do |t|
      t.time :arrival
      t.time :departure
      t.boolean :need_notification
    end
  end
end
