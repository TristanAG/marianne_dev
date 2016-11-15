class AddCourseInstancesToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :course_instances, :integer
  end
end
