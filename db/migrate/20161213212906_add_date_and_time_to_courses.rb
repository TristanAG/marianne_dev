class AddDateAndTimeToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :date, :string
    add_column :courses, :time, :string
  end
end
