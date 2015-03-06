class CreateDesires < ActiveRecord::Migration
  def change
    create_table :desires do |t|
      t.string :cause
      t.string :description

      t.timestamps
    end
  end
end
