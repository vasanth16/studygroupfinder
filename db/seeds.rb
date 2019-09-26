# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
 #movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)


more_groups = [
    {:group_id => '0', :time => '8:30pm', :location => 'ST302', :members =>'3', :class_code => 'CMPS3300', :group_name => 'Studio'},
    {:group_id => '1', :time => '9:30pm', :location => 'Gibson', :members =>'5', :class_code => 'CMPS1600', :group_name => 'Coders'}
]



more_groups.each do |group|
    Group.create!(group)
end