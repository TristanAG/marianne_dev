class AddDatesToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :dates, :string
  end
end
