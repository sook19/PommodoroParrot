class AddNameToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :name, :string
    add_column :surveys, :gender, :string
    add_column :surveys, :loops, :integer
  end
end
