# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

companies_csv = CSV.readlines("db/insights.csv")
companies_csv.shift
companies_csv.each do |row|
  Insights.create(name: row[1], url: row[2], map: row[3])
end