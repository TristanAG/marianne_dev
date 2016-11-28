class AddCourseContentToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :course_content, :text
  end
end
