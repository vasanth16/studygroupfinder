# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
 #movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)


more_groups = [
    {:group_id => '0', :time => '8:30pm', :location => 'Stanley Thomas 302', :members =>'3', :class_code => 'CMPS3300', :group_name => 'Coding Club'},
    {:group_id => '1', :time => '9:30pm', :location => 'Gibson 233', :members =>'4', :class_code => 'ENGL1010', :group_name => 'We Write Good'},
    {:group_id => '2', :time => '4:00pm', :location => 'Richardson 117', :members =>'5', :class_code => 'CMPS1500', :group_name => 'Intro 1 Study'},
    {:group_id => '3', :time => '10:00pm', :location => '1st Floor Howie T', :members =>'11', :class_code => 'CHEM1070', :group_name => 'Gen Chem Study Group'},
    {:group_id => '4', :time => '11:00am', :location => 'Newcomb 115', :members =>'7', :class_code => 'SPAN2040', :group_name => 'Hablando Juntos'},
    {:group_id => '5', :time => '7:30pm', :location => 'Dinwittie 111', :members =>'4', :class_code => 'ANTH1010', :group_name => 'Bio Anthro Gang'},
    {:group_id => '6', :time => '4:30pm', :location => 'Boggs 112', :members =>'6', :class_code => 'PHYS1320', :group_name => 'Physics II'},
    {:group_id => '7', :time => '10:00am', :location => '3rd Floor Howie T', :members =>'1', :class_code => 'CMPS2100', :group_name => 'Help me please'},
    {:group_id => '8', :time => '9:30pm', :location => 'Richardson 117', :members =>'6', :class_code => 'NSCI3300', :group_name => 'Brain Buddies'},
    {:group_id => '9', :time => '7:00pm', :location => 'The Commons', :members =>'3', :class_code => 'CMPS2200', :group_name => 'Learning is fun?'},
    {:group_id => '10', :time => '10:30pm', :location => 'Gibson 221', :members =>'5', :class_code => 'CELL1010', :group_name => 'Dr. V scares me'},
    {:group_id => '11', :time => '9:30am', :location => '1st Floor Howie T', :members =>'14', :class_code => 'ACCN2010', :group_name => 'Accounting Study Group'},
    {:group_id => '12', :time => '12:30pm', :location => 'Stanley Thomas 310', :members =>'3', :class_code => 'CMPS3300', :group_name => 'I am busy during Group 1 meetings'},
    {:group_id => '13', :time => '6:00pm', :location => 'Newcomb 117', :members =>'11', :class_code => 'ECON1010', :group_name => 'Micro'},
    {:group_id => '14', :time => '9:15pm', :location => 'Dixon 201', :members =>'4', :class_code => 'MUSC3100', :group_name => 'Learn to Sing'},
    {:group_id => '15', :time => '8:30pm', :location => 'Gibson 115', :members =>'6', :class_code => 'MATH2210', :group_name => 'Calc III Coping Sesh'},
    {:group_id => '16', :time => '11:00am', :location => 'Basement Howie T', :members =>'10', :class_code => 'CELL1010', :group_name => 'The mitochondria is the powerhouse of the cell'},
    {:group_id => '18', :time => '5:30pm', :location => 'ST302', :members =>'8', :class_code => 'CMPS3300', :group_name => 'Group 18'},
    {:group_id => '19', :time => '8:00am', :location => 'Gibson', :members =>'9', :class_code => 'CMPS1600', :group_name => 'Group 19'}
]

more_groups.each do |group|
    Group.create!(group)
end


more_users = [
    {:email => 'abc@test.com', :first_name => 'John', :last_name => 'Appleseed'},
    {:email => 'kimmy23@gmail.com', :first_name => 'Kim', :last_name => 'Possible'},
    {:email => 'bruh@yahoo.com', :first_name => 'Bruh', :last_name => 'Bruh'},
    {:email => 'rufusfan@gmail.com', :first_name => 'Ron', :last_name => 'Stoppable'},
    {:email => 'alexnbuck@gmail.com', :first_name => 'Alex', :last_name => 'Buck'},
    {:email => 'bruh@yahoo.com', :first_name => 'Bruh', :last_name => 'Bruh'},
]

more_users.each do |user|
    User.create!(user)
end