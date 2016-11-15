class RemoveMeetingInstancesFromCourse < ActiveRecord::Migration[5.0]
  def change
    remove_column :courses, :meeting_instances, :string
  end
end
