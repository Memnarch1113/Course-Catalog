# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Subject.delete_all
Course.delete_all
Instructor.delete_all

subject_file = (Rails.root.to_s + '/vendor/assets/json/subject.json')
course_file = (Rails.root.to_s + '/vendor/assets/json/course.json')
instructor_file = (Rails.root.to_s + '/vendor/assets/json/instructor.json')


subjects = JSON.parse File.read(subject_file)
subjects.each do |subject|
  Subject.create(
    term: subject["term"].to_i,
    name: subject["name"],
    abbreviation: subject["abbreviation"]
  )
end

courses = JSON.parse File.read(course_file)
courses.each do |course|
  Course.create(
    term: course["term"].to_i,
    code: course["code"],
    #subjects
    continuity_id: course["continuity_id"].to_i,
    name: course["name"],
    description: course["description"],
    credits: course["credits"].to_i,
    #independent_study: course["independent_study"]
    requirements: course["requirements"]
  )
end

instructors = JSON.parse File.read(instructor_file)
instructors.each do |instructor|
  Instructor.create(
    email: instructor["email"],
    first: instructor["first"],
    middle: instructor["middle"],
    last: instructor["last"]
  )
end
