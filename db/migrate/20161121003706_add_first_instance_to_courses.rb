class AddFirstInstanceToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :first_instance, :boolean
  end
end
