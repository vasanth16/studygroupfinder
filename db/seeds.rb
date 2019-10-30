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
    {:group_id => '18', :time => '5:30pm', :location => 'The Commons', :members =>'8', :class_code => 'MATH3090', :group_name => 'Analyzing Reals'},
    {:group_id => '19', :time => '8:00am', :location => 'Stanley Thomas 311', :members =>'9', :class_code => 'CMPS2200', :group_name => 'Algo-rhythms'}
]

more_groups.each do |group|
    Group.create!(group)
end


more_users = [
    {:email => 'abc@test.com', :first_name => 'John', :last_name => 'Appleseed'},
    {:email => 'kimmy23@gmail.com', :first_name => 'Kim', :last_name => 'Possible'},
    {:email => 'bruh@yahoo.com', :first_name => 'Bruh', :last_name => 'Bruh'},
    {:email => 'rufusfan@gmail.com', :first_name => 'Ron', :last_name => 'Stoppable'},
    {:email => 'abuck2@tulane.edu', :first_name => 'Alex', :last_name => 'Buck'},
    {:email => 'thewalrus@hotmail.com', :first_name => 'Kookoo', :last_name => 'Kachoo'},
    {:email => 'octopussgarden@beatles.co.uk', :first_name => 'Ringo', :last_name => 'Starr'},
    {:email => 'mydad@yahoo.com', :first_name => 'Mi', :last_name => 'Padre'},
    {:email => 'president@tulane.edu', :first_name => 'Mike', :last_name => 'Fitts'},
    {:email => 'tutonespresident@gmail.com', :first_name => 'TU Tones', :last_name => 'President'},
    {:email => 'obama@whitehouse.gov', :first_name => 'Barack', :last_name => 'Obama'},
    {:email => 'captjack@gmail.com', :first_name => 'Jack', :last_name => 'Sparrow'},
    {:email => 'captjack2@gmail.co.uk', :first_name => 'Jack', :last_name => 'Harkness'},
    {:email => 'bpitt@tulane.edu', :first_name => 'Brad', :last_name => 'Pitt'},
    {:email => 'thelib@tulane.edu', :first_name => 'Howard', :last_name => 'Tilton'},
    {:email => 'bestdorm@tulane.edu', :first_name => 'Lallage Feazel', :last_name => 'Wall'},
    {:email => 'genericuser@yahoo.com', :first_name => 'Firstname', :last_name => 'Lastname'},
    {:email => 'badperson@hotmail.com', :first_name => 'Christopher', :last_name => 'Columbus'},
    {:email => 'ogprez@whitehouse.gov', :first_name => 'George', :last_name => 'Washington'},
    {:email => 'akurdia@tulane.edu', :first_name => 'Anastasia', :last_name => 'Kurdia'}
]

more_users.each do |user|
    User.create!(user)
end