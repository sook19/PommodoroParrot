class AddStatusToTimers < ActiveRecord::Migration
  def change
    add_column :timers, :status, :string
  end
end
