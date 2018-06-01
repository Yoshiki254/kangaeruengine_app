# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

interviews_csv = CSV.readlines("db/interviews.csv")
interviews_csv.shift
interviews_csv.each do |row|
  Interview.create(name: row[1], url: row[2], map: row[3])
end

insights_csv = CSV.readlines("db/insights.csv")
insights_csv.shift
insights_csv.each do |row|
  Insight.create(name: row[1], url: row[2], map: row[3])
end

exams_csv = CSV.readlines("db/exams.csv")
exams_csv.shift
exams_csv.each do |row|
  Exam.create(name: row[1], url: row[2], map: row[3])
end

practices_csv = CSV.readlines("db/practices.csv")
practices_csv.shift
practices_csv.each do |row|
  Practice.create(name: row[1], url: row[2], map: row[3])
end