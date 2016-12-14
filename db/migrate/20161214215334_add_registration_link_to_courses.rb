class AddRegistrationLinkToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :registration_link, :string
  end
end
