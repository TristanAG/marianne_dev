class AddIncludeInCalendarToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :include_in_calendar, :boolean
  end
end
