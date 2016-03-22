json.array!(@courses) do |course|
  json.extract! course, :id, :type, :id, :comment, :term, :code, :subjects
  json.url course_url(course, format: :json)
end
