# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.destroy_all
Project.destroy_all
Activity.destroy_all
Week.destroy_all
Employee.destroy_all
Assignment.destroy_all
Timesheet.destroy_all


# Client
c1 = Client.create name: "Commonwealth Bank of Australia", prefix: "CBA", project_count: 0
puts "Created [#{ Client.all.length }] Clients"

# Project
p4 = Project.create name: "Big Data Project", start_date: "2018/05/14", billable_flag: true, client_id: 1
puts "Created [#{ Project.all.length }] Projects"

# Activity
a19 = Activity.create name: "Project Management", start_date: "2018/05/14", billable_flag: true, project_id: 1
a20 = Activity.create name: "Develop Sourcing Strategy", start_date: "2018/05/14", billable_flag: true, project_id: 1
a21 = Activity.create name: "Market Scan & Analysis", start_date: "2018/05/14", billable_flag: true, project_id: 1
a22 = Activity.create name: "Vendor Demos", start_date: "2018/05/14", billable_flag: true, project_id: 1
a23 = Activity.create name: "Vendor Shortlist", start_date: "2018/05/14", billable_flag: true, project_id: 1
a24 = Activity.create name: "Prepare Business Case", start_date: "2018/05/14", billable_flag: true, project_id: 1
a25 = Activity.create name: "Negotiation", start_date: "2018/05/14", billable_flag: true, project_id: 1
a26 = Activity.create name: "Contract Signing", start_date: "2018/05/14", billable_flag: true, project_id: 1
a27 = Activity.create name: "Close", start_date: "2018/05/14", billable_flag: true, project_id: 1
puts "Created [#{ Activity.all.length }] Projects"

# Week
w18 = Week.create start_date: "2018/04/30", end_date: "2018/05/06", name: "30/04/2018 - 06/05/2018", day1_date: "2018/04/30", day2_date: "2018/05/01", day3_date: "2018/05/02", day4_date: "2018/05/03", day5_date: "2018/05/04", day6_date: "2018/05/05", day7_date: "2018/05/06"
w19 = Week.create start_date: "2018/05/07", end_date: "2018/05/13", name: "07/05/2018 - 13/05/2018", day1_date: "2018/05/07", day2_date: "2018/05/08", day3_date: "2018/05/09", day4_date: "2018/05/10", day5_date: "2018/05/11", day6_date: "2018/05/12", day7_date: "2018/05/13"
w20 = Week.create start_date: "2018/05/14", end_date: "2018/05/20", name: "14/05/2018 - 20/05/2018", day1_date: "2018/05/14", day2_date: "2018/05/15", day3_date: "2018/05/16", day4_date: "2018/05/17", day5_date: "2018/05/18", day6_date: "2018/05/19", day7_date: "2018/05/20"
w21 = Week.create start_date: "2018/05/21", end_date: "2018/05/27", name: "21/05/2018 - 27/05/2018", day1_date: "2018/05/21", day2_date: "2018/05/22", day3_date: "2018/05/23", day4_date: "2018/05/24", day5_date: "2018/05/25", day6_date: "2018/05/26", day7_date: "2018/05/27"
w22 = Week.create start_date: "2018/05/28", end_date: "2018/06/03", name: "28/05/2018 - 03/06/2018", day1_date: "2018/05/28", day2_date: "2018/05/29", day3_date: "2018/05/30", day4_date: "2018/05/31", day5_date: "2018/06/01", day6_date: "2018/06/02", day7_date: "2018/06/03"
w23 = Week.create start_date: "2018/06/04", end_date: "2018/06/10", name: "04/06/2018 - 10/06/2018", day1_date: "2018/06/04", day2_date: "2018/06/05", day3_date: "2018/06/06", day4_date: "2018/06/07", day5_date: "2018/06/08", day6_date: "2018/06/09", day7_date: "2018/06/10"
w24 = Week.create start_date: "2018/06/11", end_date: "2018/06/17", name: "11/06/2018 - 17/06/2018", day1_date: "2018/06/11", day2_date: "2018/06/12", day3_date: "2018/06/13", day4_date: "2018/06/14", day5_date: "2018/06/15", day6_date: "2018/06/16", day7_date: "2018/06/17"
w25 = Week.create start_date: "2018/06/18", end_date: "2018/06/24", name: "18/06/2018 - 24/06/2018", day1_date: "2018/06/18", day2_date: "2018/06/19", day3_date: "2018/06/20", day4_date: "2018/06/21", day5_date: "2018/06/22", day6_date: "2018/06/23", day7_date: "2018/06/24"
w26 = Week.create start_date: "2018/06/25", end_date: "2018/07/01", name: "25/06/2018 - 01/07/2018", day1_date: "2018/06/25", day2_date: "2018/06/26", day3_date: "2018/06/27", day4_date: "2018/06/28", day5_date: "2018/06/29", day6_date: "2018/06/30", day7_date: "2018/07/01"
puts "Created [#{ Week.all.length }] Weeks"

e1 = Employee.create first_name: "Brendan", last_name: "Leonard", name: "Brendan Leonard", email: "bl@gmail.com", start_date: "2017/05/20", admin_flag: true, password: "chicken", password_confirmation: "chicken"
e2 = Employee.create first_name: "Nathan", last_name: "Del Medico", name: "Nathan Del Medico", email: "nathan@gmail.com", start_date: "2018/01/15", admin_flag: false, password: "chicken", password_confirmation: "chicken"
puts "Created [#{ Employee.all.length }] Employees"

e1.projects << p4
e2.projects << p4

puts "Created [#{ Timesheet.all.length }] Timesheets"

puts "Created [#{ TimesheetDetail.all.length }] TimesheetDetails"
