# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

#Delete existing records
Child.destroy_all
Activity.destroy_all

puts "Deleted old records"

#Create children seed data (Using faker gem)
25.times do
  Child.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

#Create activity seed data with activities and activity_children records
activity_list = [
  {activity_name: "Activity A", start_at: Time.now, end_at: Time.now + Faker::Number.number(1).to_i.hours},
  {activity_name: "Activity B", start_at: Time.now, end_at: Time.now + Faker::Number.number(1).to_i.hours},
  {activity_name: "Activity C", start_at: Time.now, end_at: Time.now + Faker::Number.number(1).to_i.hours},
  {activity_name: "Activity D", start_at: Time.now, end_at: Time.now + Faker::Number.number(1).to_i.hours},
  {activity_name: "Activity E", start_at: Time.now, end_at: Time.now + Faker::Number.number(1).to_i.hours}
]

activity_list.each_with_index do |values, index|
  activity = Activity.create(values)
  Child.limit(5).offset(index).each do |child|
    child.activity_children.create(activity: activity)
  end
end

puts "Created new records"





