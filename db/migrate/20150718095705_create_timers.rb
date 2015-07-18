class CreateTimers < ActiveRecord::Migration
  def change
    create_table :timers do |t|
      t.references :survey, index: true, foreign_key: true
      t.integer :loops_completed

      t.timestamps null: false
    end
  end
end
