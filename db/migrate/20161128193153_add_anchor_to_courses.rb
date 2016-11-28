class AddAnchorToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :anchor, :string
  end
end
