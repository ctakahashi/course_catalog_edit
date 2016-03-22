# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c_file = File.read('db/course.json')
c_hash = JSON.parse(c_file)

c_hash.each do |c|
  Course.create(code: c["code"], subjects: c["subjects"], name: c["name"], description: c["description"],
    credits: c["credits"], independent_study: c["independent_study"], requirements: c["requirements"] )
end

i_file = File.read('db/instructor.json')
i_hash = JSON.parse(i_file)

i_hash.each do |i|
  Instructor.create(s_id: i["id"], email: i["email"], first: i["first"], middle: i["middle"], last: i["last"])
end

s_file = File.read('db/subject.json')
s_hash = JSON.parse(s_file)

s_hash.each do |s|
  Subject.create(s_id: s["id"], name: s["name"], abbreviation: s["abbreviation"], segments: s["segments"])
end
