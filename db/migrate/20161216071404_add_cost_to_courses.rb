class AddCostToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :cost, :string
  end
end
