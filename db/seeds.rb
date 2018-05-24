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
c2 = Client.create name: "Westpac", prefix: "WBC", project_count: 0
puts "Created [#{ Client.all.length }] Clients"

# Project
p1 = Project.create name: "Database Tuning", start_date: "2018/05/21", billable_flag: true, client_id: 1
p2 = Project.create name: "New Costing System", start_date: "2018/06/01", billable_flag: true, client_id: 1
p3 = Project.create name: "Consolidation System Review", start_date: "2018/01/01", billable_flag: true, client_id: 2
p4 = Project.create name: "Big Data Project", start_date: "2018/05/14", billable_flag: true, client_id: 2
puts "Created [#{ Project.all.length }] Projects"

# Activity
a1 = Activity.create name: "Planning", start_date: "2018/05/21", billable_flag: true, project_id: 1
a2 = Activity.create name: "Initiation", start_date: "2018/05/21", billable_flag: true, project_id: 1
a3 = Activity.create name: "Prototyping", start_date: "2018/05/21", billable_flag: true, project_id: 1
a4 = Activity.create name: "Write Report", start_date: "2018/05/21", billable_flag: true, project_id: 1
a5 = Activity.create name: "Report Review", start_date: "2018/05/21", billable_flag: true, project_id: 1
a6 = Activity.create name: "Close", start_date: "2018/05/21", billable_flag: true, project_id: 1

a7 = Activity.create name: "Planning", start_date: "2018/06/01", billable_flag: true, project_id: 2
a8 = Activity.create name: "Initiation", start_date: "2018/06/01", billable_flag: true, project_id: 2
a9 = Activity.create name: "Architecture", start_date: "2018/06/01", billable_flag: true, project_id: 2
a10 = Activity.create name: "Sprint 1", start_date: "2018/06/01", billable_flag: true, project_id: 2
a10 = Activity.create name: "Showcase 1", start_date: "2018/06/01", billable_flag: true, project_id: 2
a10 = Activity.create name: "Sprint 2", start_date: "2018/06/01", billable_flag: true, project_id: 2
a10 = Activity.create name: "Showcase 2", start_date: "2018/06/01", billable_flag: true, project_id: 2
a12 = Activity.create name: "Close", start_date: "2018/06/01", billable_flag: true, project_id: 2

a13 = Activity.create name: "Kick-off", start_date: "2018/01/01", billable_flag: true, project_id: 3
a14 = Activity.create name: "Review Documentation", start_date: "2018/01/01", billable_flag: true, project_id: 3
a15 = Activity.create name: "User Interviews", start_date: "2018/01/01", billable_flag: true, project_id: 3
a16 = Activity.create name: "Report Development", start_date: "2018/01/01", billable_flag: true, project_id: 3
a16 = Activity.create name: "Report Review", start_date: "2018/01/01", billable_flag: true, project_id: 3
a16 = Activity.create name: "Stakeholder Presentation", start_date: "2018/01/01", billable_flag: true, project_id: 3
a18 = Activity.create name: "Close", start_date: "2018/01/01", billable_flag: true, project_id: 3

a19 = Activity.create name: "Project Management", start_date: "2018/05/14", billable_flag: true, project_id: 4
a20 = Activity.create name: "Develop Sourcing Strategy", start_date: "2018/05/14", billable_flag: true, project_id: 4
a21 = Activity.create name: "Market Scan & Analysis", start_date: "2018/05/14", billable_flag: true, project_id: 4
a22 = Activity.create name: "Vendor Demos", start_date: "2018/05/14", billable_flag: true, project_id: 4
a23 = Activity.create name: "Vendor Shortlist", start_date: "2018/05/14", billable_flag: true, project_id: 4
a24 = Activity.create name: "Prepare Business Case", start_date: "2018/05/14", billable_flag: true, project_id: 4
a25 = Activity.create name: "Negotiation", start_date: "2018/05/14", billable_flag: true, project_id: 4
a26 = Activity.create name: "Contract Signing", start_date: "2018/05/14", billable_flag: true, project_id: 4
a27 = Activity.create name: "Close", start_date: "2018/05/14", billable_flag: true, project_id: 4
puts "Created [#{ Activity.all.length }] Projects"

# Week
w1 = Week.create start_date: "2018/01/01", end_date: "2018/01/07", name: "01/01/2018 - 07/01/2018", day1_date: "2018/01/01", day2_date: "2018/01/02", day3_date: "2018/01/03", day4_date: "2018/01/04", day5_date: "2018/01/05", day6_date: "2018/01/06", day7_date: "2018/01/07"
w2 = Week.create start_date: "2018/01/08", end_date: "2018/01/14", name: "08/01/2018 - 14/01/2018", day1_date: "2018/01/08", day2_date: "2018/01/09", day3_date: "2018/01/10", day4_date: "2018/01/11", day5_date: "2018/01/12", day6_date: "2018/01/13", day7_date: "2018/01/14"
w3 = Week.create start_date: "2018/01/15", end_date: "2018/01/21", name: "15/01/2018 - 21/01/2018", day1_date: "2018/01/15", day2_date: "2018/01/16", day3_date: "2018/01/17", day4_date: "2018/01/18", day5_date: "2018/01/19", day6_date: "2018/01/20", day7_date: "2018/01/21"
w4 = Week.create start_date: "2018/01/22", end_date: "2018/01/28", name: "22/01/2018 - 28/01/2018", day1_date: "2018/01/22", day2_date: "2018/01/23", day3_date: "2018/01/24", day4_date: "2018/01/25", day5_date: "2018/01/26", day6_date: "2018/01/27", day7_date: "2018/01/28"
w5 = Week.create start_date: "2018/01/29", end_date: "2018/02/04", name: "29/01/2018 - 04/02/2018", day1_date: "2018/01/29", day2_date: "2018/01/30", day3_date: "2018/01/31", day4_date: "2018/02/01", day5_date: "2018/02/02", day6_date: "2018/02/03", day7_date: "2018/02/04"
w6 = Week.create start_date: "2018/02/05", end_date: "2018/02/11", name: "05/02/2018 - 11/02/2018", day1_date: "2018/02/05", day2_date: "2018/02/06", day3_date: "2018/02/07", day4_date: "2018/02/08", day5_date: "2018/02/09", day6_date: "2018/02/10", day7_date: "2018/02/11"
w7 = Week.create start_date: "2018/02/12", end_date: "2018/02/18", name: "12/02/2018 - 18/02/2018", day1_date: "2018/02/12", day2_date: "2018/02/13", day3_date: "2018/02/14", day4_date: "2018/02/15", day5_date: "2018/02/16", day6_date: "2018/02/17", day7_date: "2018/02/18"
w8 = Week.create start_date: "2018/02/19", end_date: "2018/02/25", name: "19/02/2018 - 25/02/2018", day1_date: "2018/02/19", day2_date: "2018/02/20", day3_date: "2018/02/21", day4_date: "2018/02/22", day5_date: "2018/02/23", day6_date: "2018/02/24", day7_date: "2018/02/25"
w9 = Week.create start_date: "2018/02/26", end_date: "2018/03/04", name: "26/02/2018 - 04/03/2018", day1_date: "2018/02/26", day2_date: "2018/02/27", day3_date: "2018/02/28", day4_date: "2018/03/01", day5_date: "2018/03/02", day6_date: "2018/03/03", day7_date: "2018/03/04"
w10 = Week.create start_date: "2018/03/05", end_date: "2018/03/11", name: "05/03/2018 - 11/03/2018", day1_date: "2018/03/05", day2_date: "2018/03/06", day3_date: "2018/03/07", day4_date: "2018/03/08", day5_date: "2018/03/09", day6_date: "2018/03/10", day7_date: "2018/03/11"
w11 = Week.create start_date: "2018/03/12", end_date: "2018/03/18", name: "12/03/2018 - 18/03/2018", day1_date: "2018/03/12", day2_date: "2018/03/13", day3_date: "2018/03/14", day4_date: "2018/03/15", day5_date: "2018/03/16", day6_date: "2018/03/17", day7_date: "2018/03/18"
w12 = Week.create start_date: "2018/03/19", end_date: "2018/03/25", name: "19/03/2018 - 25/03/2018", day1_date: "2018/03/19", day2_date: "2018/03/20", day3_date: "2018/03/21", day4_date: "2018/03/22", day5_date: "2018/03/23", day6_date: "2018/03/24", day7_date: "2018/03/25"
w13 = Week.create start_date: "2018/03/26", end_date: "2018/04/01", name: "26/03/2018 - 01/04/2018", day1_date: "2018/03/26", day2_date: "2018/03/27", day3_date: "2018/03/28", day4_date: "2018/03/29", day5_date: "2018/03/30", day6_date: "2018/03/31", day7_date: "2018/04/01"
w14 = Week.create start_date: "2018/04/02", end_date: "2018/04/08", name: "02/04/2018 - 08/04/2018", day1_date: "2018/04/02", day2_date: "2018/04/03", day3_date: "2018/04/04", day4_date: "2018/04/05", day5_date: "2018/04/06", day6_date: "2018/04/07", day7_date: "2018/04/08"
w15 = Week.create start_date: "2018/04/09", end_date: "2018/04/15", name: "09/04/2018 - 15/04/2018", day1_date: "2018/04/09", day2_date: "2018/04/10", day3_date: "2018/04/11", day4_date: "2018/04/12", day5_date: "2018/04/13", day6_date: "2018/04/14", day7_date: "2018/04/15"
w16 = Week.create start_date: "2018/04/16", end_date: "2018/04/22", name: "16/04/2018 - 22/04/2018", day1_date: "2018/04/16", day2_date: "2018/04/17", day3_date: "2018/04/18", day4_date: "2018/04/19", day5_date: "2018/04/20", day6_date: "2018/04/21", day7_date: "2018/04/22"
w17 = Week.create start_date: "2018/04/23", end_date: "2018/04/29", name: "23/04/2018 - 29/04/2018", day1_date: "2018/04/23", day2_date: "2018/04/24", day3_date: "2018/04/25", day4_date: "2018/04/26", day5_date: "2018/04/27", day6_date: "2018/04/28", day7_date: "2018/04/29"
w18 = Week.create start_date: "2018/04/30", end_date: "2018/05/06", name: "30/04/2018 - 06/05/2018", day1_date: "2018/04/30", day2_date: "2018/05/01", day3_date: "2018/05/02", day4_date: "2018/05/03", day5_date: "2018/05/04", day6_date: "2018/05/05", day7_date: "2018/05/06"
w19 = Week.create start_date: "2018/05/07", end_date: "2018/05/13", name: "07/05/2018 - 13/05/2018", day1_date: "2018/05/07", day2_date: "2018/05/08", day3_date: "2018/05/09", day4_date: "2018/05/10", day5_date: "2018/05/11", day6_date: "2018/05/12", day7_date: "2018/05/13"
w20 = Week.create start_date: "2018/05/14", end_date: "2018/05/20", name: "14/05/2018 - 20/05/2018", day1_date: "2018/05/14", day2_date: "2018/05/15", day3_date: "2018/05/16", day4_date: "2018/05/17", day5_date: "2018/05/18", day6_date: "2018/05/19", day7_date: "2018/05/20"
w21 = Week.create start_date: "2018/05/21", end_date: "2018/05/27", name: "21/05/2018 - 27/05/2018", day1_date: "2018/05/21", day2_date: "2018/05/22", day3_date: "2018/05/23", day4_date: "2018/05/24", day5_date: "2018/05/25", day6_date: "2018/05/26", day7_date: "2018/05/27"
w22 = Week.create start_date: "2018/05/28", end_date: "2018/06/03", name: "28/05/2018 - 03/06/2018", day1_date: "2018/05/28", day2_date: "2018/05/29", day3_date: "2018/05/30", day4_date: "2018/05/31", day5_date: "2018/06/01", day6_date: "2018/06/02", day7_date: "2018/06/03"
w23 = Week.create start_date: "2018/06/04", end_date: "2018/06/10", name: "04/06/2018 - 10/06/2018", day1_date: "2018/06/04", day2_date: "2018/06/05", day3_date: "2018/06/06", day4_date: "2018/06/07", day5_date: "2018/06/08", day6_date: "2018/06/09", day7_date: "2018/06/10"
w24 = Week.create start_date: "2018/06/11", end_date: "2018/06/17", name: "11/06/2018 - 17/06/2018", day1_date: "2018/06/11", day2_date: "2018/06/12", day3_date: "2018/06/13", day4_date: "2018/06/14", day5_date: "2018/06/15", day6_date: "2018/06/16", day7_date: "2018/06/17"
w25 = Week.create start_date: "2018/06/18", end_date: "2018/06/24", name: "18/06/2018 - 24/06/2018", day1_date: "2018/06/18", day2_date: "2018/06/19", day3_date: "2018/06/20", day4_date: "2018/06/21", day5_date: "2018/06/22", day6_date: "2018/06/23", day7_date: "2018/06/24"
w26 = Week.create start_date: "2018/06/25", end_date: "2018/07/01", name: "25/06/2018 - 01/07/2018", day1_date: "2018/06/25", day2_date: "2018/06/26", day3_date: "2018/06/27", day4_date: "2018/06/28", day5_date: "2018/06/29", day6_date: "2018/06/30", day7_date: "2018/07/01"
w27 = Week.create start_date: "2018/07/02", end_date: "2018/07/08", name: "02/07/2018 - 08/07/2018", day1_date: "2018/07/02", day2_date: "2018/07/03", day3_date: "2018/07/04", day4_date: "2018/07/05", day5_date: "2018/07/06", day6_date: "2018/07/07", day7_date: "2018/07/08"
w28 = Week.create start_date: "2018/07/09", end_date: "2018/07/15", name: "09/07/2018 - 15/07/2018", day1_date: "2018/07/09", day2_date: "2018/07/10", day3_date: "2018/07/11", day4_date: "2018/07/12", day5_date: "2018/07/13", day6_date: "2018/07/14", day7_date: "2018/07/15"
w29 = Week.create start_date: "2018/07/16", end_date: "2018/07/22", name: "16/07/2018 - 22/07/2018", day1_date: "2018/07/16", day2_date: "2018/07/17", day3_date: "2018/07/18", day4_date: "2018/07/19", day5_date: "2018/07/20", day6_date: "2018/07/21", day7_date: "2018/07/22"
w30 = Week.create start_date: "2018/07/23", end_date: "2018/07/29", name: "23/07/2018 - 29/07/2018", day1_date: "2018/07/23", day2_date: "2018/07/24", day3_date: "2018/07/25", day4_date: "2018/07/26", day5_date: "2018/07/27", day6_date: "2018/07/28", day7_date: "2018/07/29"
w31 = Week.create start_date: "2018/07/30", end_date: "2018/08/05", name: "30/07/2018 - 05/08/2018", day1_date: "2018/07/30", day2_date: "2018/07/31", day3_date: "2018/08/01", day4_date: "2018/08/02", day5_date: "2018/08/03", day6_date: "2018/08/04", day7_date: "2018/08/05"
w32 = Week.create start_date: "2018/08/06", end_date: "2018/08/12", name: "06/08/2018 - 12/08/2018", day1_date: "2018/08/06", day2_date: "2018/08/07", day3_date: "2018/08/08", day4_date: "2018/08/09", day5_date: "2018/08/10", day6_date: "2018/08/11", day7_date: "2018/08/12"
w33 = Week.create start_date: "2018/08/13", end_date: "2018/08/19", name: "13/08/2018 - 19/08/2018", day1_date: "2018/08/13", day2_date: "2018/08/14", day3_date: "2018/08/15", day4_date: "2018/08/16", day5_date: "2018/08/17", day6_date: "2018/08/18", day7_date: "2018/08/19"
w34 = Week.create start_date: "2018/08/20", end_date: "2018/08/26", name: "20/08/2018 - 26/08/2018", day1_date: "2018/08/20", day2_date: "2018/08/21", day3_date: "2018/08/22", day4_date: "2018/08/23", day5_date: "2018/08/24", day6_date: "2018/08/25", day7_date: "2018/08/26"
w35 = Week.create start_date: "2018/08/27", end_date: "2018/09/02", name: "27/08/2018 - 02/09/2018", day1_date: "2018/08/27", day2_date: "2018/08/28", day3_date: "2018/08/29", day4_date: "2018/08/30", day5_date: "2018/08/31", day6_date: "2018/09/01", day7_date: "2018/09/02"
w36 = Week.create start_date: "2018/09/03", end_date: "2018/09/09", name: "03/09/2018 - 09/09/2018", day1_date: "2018/09/03", day2_date: "2018/09/04", day3_date: "2018/09/05", day4_date: "2018/09/06", day5_date: "2018/09/07", day6_date: "2018/09/08", day7_date: "2018/09/09"
w37 = Week.create start_date: "2018/09/10", end_date: "2018/09/16", name: "10/09/2018 - 16/09/2018", day1_date: "2018/09/10", day2_date: "2018/09/11", day3_date: "2018/09/12", day4_date: "2018/09/13", day5_date: "2018/09/14", day6_date: "2018/09/15", day7_date: "2018/09/16"
w38 = Week.create start_date: "2018/09/17", end_date: "2018/09/23", name: "17/09/2018 - 23/09/2018", day1_date: "2018/09/17", day2_date: "2018/09/18", day3_date: "2018/09/19", day4_date: "2018/09/20", day5_date: "2018/09/21", day6_date: "2018/09/22", day7_date: "2018/09/23"
w39 = Week.create start_date: "2018/09/24", end_date: "2018/09/30", name: "24/09/2018 - 30/09/2018", day1_date: "2018/09/24", day2_date: "2018/09/25", day3_date: "2018/09/26", day4_date: "2018/09/27", day5_date: "2018/09/28", day6_date: "2018/09/29", day7_date: "2018/09/30"
w40 = Week.create start_date: "2018/10/01", end_date: "2018/10/07", name: "01/10/2018 - 07/10/2018", day1_date: "2018/10/01", day2_date: "2018/10/02", day3_date: "2018/10/03", day4_date: "2018/10/04", day5_date: "2018/10/05", day6_date: "2018/10/06", day7_date: "2018/10/07"
w41 = Week.create start_date: "2018/10/08", end_date: "2018/10/14", name: "08/10/2018 - 14/10/2018", day1_date: "2018/10/08", day2_date: "2018/10/09", day3_date: "2018/10/10", day4_date: "2018/10/11", day5_date: "2018/10/12", day6_date: "2018/10/13", day7_date: "2018/10/14"
w42 = Week.create start_date: "2018/10/15", end_date: "2018/10/21", name: "15/10/2018 - 21/10/2018", day1_date: "2018/10/15", day2_date: "2018/10/16", day3_date: "2018/10/17", day4_date: "2018/10/18", day5_date: "2018/10/19", day6_date: "2018/10/20", day7_date: "2018/10/21"
w43 = Week.create start_date: "2018/10/22", end_date: "2018/10/28", name: "22/10/2018 - 28/10/2018", day1_date: "2018/10/22", day2_date: "2018/10/23", day3_date: "2018/10/24", day4_date: "2018/10/25", day5_date: "2018/10/26", day6_date: "2018/10/27", day7_date: "2018/10/28"
w44 = Week.create start_date: "2018/10/29", end_date: "2018/11/04", name: "29/10/2018 - 04/11/2018", day1_date: "2018/10/29", day2_date: "2018/10/30", day3_date: "2018/10/31", day4_date: "2018/11/01", day5_date: "2018/11/02", day6_date: "2018/11/03", day7_date: "2018/11/04"
w45 = Week.create start_date: "2018/11/05", end_date: "2018/11/11", name: "05/11/2018 - 11/11/2018", day1_date: "2018/11/05", day2_date: "2018/11/06", day3_date: "2018/11/07", day4_date: "2018/11/08", day5_date: "2018/11/09", day6_date: "2018/11/10", day7_date: "2018/11/11"
w46 = Week.create start_date: "2018/11/12", end_date: "2018/11/18", name: "12/11/2018 - 18/11/2018", day1_date: "2018/11/12", day2_date: "2018/11/13", day3_date: "2018/11/14", day4_date: "2018/11/15", day5_date: "2018/11/16", day6_date: "2018/11/17", day7_date: "2018/11/18"
w47 = Week.create start_date: "2018/11/19", end_date: "2018/11/25", name: "19/11/2018 - 25/11/2018", day1_date: "2018/11/19", day2_date: "2018/11/20", day3_date: "2018/11/21", day4_date: "2018/11/22", day5_date: "2018/11/23", day6_date: "2018/11/24", day7_date: "2018/11/25"
w48 = Week.create start_date: "2018/11/26", end_date: "2018/12/02", name: "26/11/2018 - 02/12/2018", day1_date: "2018/11/26", day2_date: "2018/11/27", day3_date: "2018/11/28", day4_date: "2018/11/29", day5_date: "2018/11/30", day6_date: "2018/12/01", day7_date: "2018/12/02"
w49 = Week.create start_date: "2018/12/03", end_date: "2018/12/09", name: "03/12/2018 - 09/12/2018", day1_date: "2018/12/03", day2_date: "2018/12/04", day3_date: "2018/12/05", day4_date: "2018/12/06", day5_date: "2018/12/07", day6_date: "2018/12/08", day7_date: "2018/12/09"
w50 = Week.create start_date: "2018/12/10", end_date: "2018/12/16", name: "10/12/2018 - 16/12/2018", day1_date: "2018/12/10", day2_date: "2018/12/11", day3_date: "2018/12/12", day4_date: "2018/12/13", day5_date: "2018/12/14", day6_date: "2018/12/15", day7_date: "2018/12/16"
w51 = Week.create start_date: "2018/12/17", end_date: "2018/12/23", name: "17/12/2018 - 23/12/2018", day1_date: "2018/12/17", day2_date: "2018/12/18", day3_date: "2018/12/19", day4_date: "2018/12/20", day5_date: "2018/12/21", day6_date: "2018/12/22", day7_date: "2018/12/23"
w52 = Week.create start_date: "2018/12/24", end_date: "2018/12/30", name: "24/12/2018 - 30/12/2018", day1_date: "2018/12/24", day2_date: "2018/12/25", day3_date: "2018/12/26", day4_date: "2018/12/27", day5_date: "2018/12/28", day6_date: "2018/12/29", day7_date: "2018/12/30"
puts "Created [#{ Week.all.length }] Weeks"

e1 = Employee.create first_name: "Brendan", last_name: "Leonard", name: "Brendan Leonard", email: "bl@gmail.com", start_date: "2017/05/20", password: "chicken", password_confirmation: "chicken"
e2 = Employee.create first_name: "Nathan", last_name: "Del Medico", name: "Nathan Del Medico", email: "nathan@gmail.com", start_date: "2018/01/15", password: "chicken", password_confirmation: "chicken"
puts "Created [#{ Employee.all.length }] Employees"

e1.projects << p1 << p2 << p3 << p4
e2.projects << p1 << p4

t1 = Timesheet.create employee_id: 1, week_id: 18
t2 = Timesheet.create employee_id: 1, week_id: 19
t3 = Timesheet.create employee_id: 1, week_id: 20
t4 = Timesheet.create employee_id: 1, week_id: 21
puts "Created [#{ Timesheet.all.length }] Timesheets"

td1 = TimesheetDetail.create timesheet_id: 4, activity_id: 1, billable_flag: true, day1_hours: 2, day2_hours: 3, day3_hours: 4, day4_hours: 5, day5_hours: 6, total_hours: 20 
td2 = TimesheetDetail.create timesheet_id: 4, activity_id: 2, billable_flag: true, day1_hours: 6, day2_hours: 5, day3_hours: 4, day4_hours: 3, day5_hours: 2, total_hours: 20
puts "Created [#{ TimesheetDetail.all.length }] TimesheetDetails"
