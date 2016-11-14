json.array!(@courses) do |course|
  json.extract! course, :id, :name, :start_time
  json.url course_url(course, format: :json)
end
