class AddNewStartTimeToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :start_time_4, :datetime
  end
end
