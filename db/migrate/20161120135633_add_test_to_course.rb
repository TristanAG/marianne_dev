class AddTestToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :test, :boolean
  end
end
