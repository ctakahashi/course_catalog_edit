json.array!(@subjects) do |subject|
  json.extract! subject, :id, :type, :id, :comment, :term, :name, :abbreviation, :segments
  json.url subject_url(subject, format: :json)
end
