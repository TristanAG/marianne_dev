class AddFieldsToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :start_time_1, :datetime
    add_column :courses, :start_time_2, :datetime
    add_column :courses, :start_time_3, :datetime
    add_column :courses, :meeting_instances, :integer
  end
end
