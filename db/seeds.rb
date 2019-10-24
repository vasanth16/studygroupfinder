# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
 #movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)


more_groups = [
    {:group_id => '0', :time => '8:30pm', :location => 'ST302', :members =>'3', :class_code => 'CMPS3300', :group_name => 'Group 0'},
    {:group_id => '1', :time => '9:30pm', :location => 'Gibson 333', :members =>'4', :class_code => 'CMPS1600', :group_name => 'Group 1'},
    {:group_id => '2', :time => '4:00pm', :location => 'Richardson 117', :members =>'5', :class_code => 'CMPS1500', :group_name => 'Group 2'},
    {:group_id => '3', :time => '11:00am', :location => 'ST302', :members =>'3', :class_code => 'CMPS3300', :group_name => 'Group 3'},
    {:group_id => '4', :time => '9:00pm', :location => 'Gibson', :members =>'7', :class_code => 'CMPS1600', :group_name => 'Group 4'},
    {:group_id => '5', :time => '9:30pm', :location => 'Gibson', :members =>'4', :class_code => 'CMPS1600', :group_name => 'Group 5'},
    {:group_id => '6', :time => '8:30pm', :location => 'ST302', :members =>'3', :class_code => 'CMPS3300', :group_name => 'Group 6'},
    {:group_id => '7', :time => '9:30pm', :location => 'Gibson', :members =>'9', :class_code => 'CMPS2100', :group_name => 'Group 7'},
    {:group_id => '8', :time => '9:30pm', :location => 'Gibson', :members =>'6', :class_code => 'CMPS1600', :group_name => 'Group 8'},
    {:group_id => '9', :time => '8:30pm', :location => 'ST302', :members =>'3', :class_code => 'CMPS2200', :group_name => 'Group 9'},
    {:group_id => '10', :time => '9:30pm', :location => 'Gibson', :members =>'5', :class_code => 'CMPS1600', :group_name => 'Group 10'},
    {:group_id => '11', :time => '9:30pm', :location => 'Gibson', :members =>'14', :class_code => 'CMPS1500', :group_name => 'Group 11'},
    {:group_id => '12', :time => '8:30pm', :location => 'ST302', :members =>'3', :class_code => 'CMPS32100', :group_name => 'Group 12'},
    {:group_id => '13', :time => '9:30pm', :location => 'Gibson', :members =>'11', :class_code => 'CMPS1500', :group_name => 'Group 13'},
    {:group_id => '14', :time => '9:30pm', :location => 'Gibson', :members =>'4', :class_code => 'CMPS1600', :group_name => 'Group 14'},
    {:group_id => '15', :time => '8:30pm', :location => 'ST302', :members =>'6', :class_code => 'CMPS3300', :group_name => 'Group 15'},
    {:group_id => '16', :time => '9:30pm', :location => 'Gibson', :members =>'10', :class_code => 'CMPS1600', :group_name => 'Group 16'},
    {:group_id => '17', :time => '9:30pm', :location => 'Gibson', :members =>'3', :class_code => 'CMPS1500', :group_name => 'Group 17'},
    {:group_id => '18', :time => '8:30pm', :location => 'ST302', :members =>'8', :class_code => 'CMPS3300', :group_name => 'Group 18'},
    {:group_id => '19', :time => '9:30pm', :location => 'Gibson', :members =>'9', :class_code => 'CMPS1600', :group_name => 'Group 19'}
]

more_groups.each do |group|
    Group.create!(group)
end


more_users = [
    {:email => 'abc@test.com', :first_name => 'John', :last_name => 'Appleseed'},
    {:email => 'kimmy23@gmail.com', :first_name => 'Kim', :last_name => 'Possible'},
    {:email => 'bruh@yahoo.com', :first_name => 'Bruh', :last_name => 'Bruh'}
]

more_users.each do |user|
    User.create!(user)
end