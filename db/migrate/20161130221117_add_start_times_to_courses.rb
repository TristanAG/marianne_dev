class AddStartTimesToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :start_time_5, :datetime
    add_column :courses, :start_time_6, :datetime
    add_column :courses, :start_time_7, :datetime
    add_column :courses, :start_time_8, :datetime
    add_column :courses, :start_time_9, :datetime
    add_column :courses, :start_time_10, :datetime
    add_column :courses, :start_time_11, :datetime
    add_column :courses, :start_time_12, :datetime
  end
end
