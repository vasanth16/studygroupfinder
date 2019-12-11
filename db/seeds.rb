more_groups = [
    {:group_id => '1', :time => '8:00pm', :location => 'Stanley Thomas 302', :members => '1', :class_code => 'CMPS3300', :group_name => 'Group Prime'},
    {:group_id => '2', :time => '8:30pm', :location => 'Stanley Thomas 302', :members => '1', :class_code => 'CMPS3300', :group_name => 'Coding Club'},
    {:group_id => '3', :time => '9:30pm', :location => 'Gibson 233', :members => '1', :class_code => 'ENGL1010', :group_name => 'We Write Good'},
    {:group_id => '4', :time => '4:00pm', :location => 'Richardson 117', :members => '1', :class_code => 'CMPS1500', :group_name => 'Intro 1 Study'},
    {:group_id => '5', :time => '10:00pm', :location => '1st Floor Howie T', :members => '1', :class_code => 'CHEM1070', :group_name => 'Gen Chem Study Group'},
    {:group_id => '6', :time => '11:00am', :location => 'Newcomb 115', :members => '1', :class_code => 'SPAN2040', :group_name => 'Hablando Juntos'},
    {:group_id => '7', :time => '7:30pm', :location => 'Dinwittie 111', :members => '1', :class_code => 'ANTH1010', :group_name => 'Bio Anthro Gang'},
    {:group_id => '8', :time => '4:30pm', :location => 'Boggs 112', :members => '1', :class_code => 'PHYS1320', :group_name => 'Physics II'},
    {:group_id => '9', :time => '10:00am', :location => '3rd Floor Howie T', :members => '1', :class_code => 'CMPS2100', :group_name => 'Help me please'},
    {:group_id => '10', :time => '9:30pm', :location => 'Richardson 117', :members => '1', :class_code => 'NSCI3300', :group_name => 'Brain Buddies'},
    {:group_id => '11', :time => '7:00pm', :location => 'The Commons', :members => '1', :class_code => 'CMPS2200', :group_name => 'Learning is fun?'},
    {:group_id => '12', :time => '10:30pm', :location => 'Gibson 221', :members => '1', :class_code => 'CELL1010', :group_name => 'Dr. V scares me'},
    {:group_id => '13', :time => '9:30am', :location => '1st Floor Howie T', :members => '1', :class_code => 'ACCN2010', :group_name => 'Accounting Study Group'},
    {:group_id => '14', :time => '12:30pm', :location => 'Stanley Thomas 310', :members => '1', :class_code => 'CMPS3300', :group_name => 'I am busy during Group 1 meetings'},
    {:group_id => '15', :time => '6:00pm', :location => 'Newcomb 117', :members => '1', :class_code => 'ECON1010', :group_name => 'Micro'},
    {:group_id => '16', :time => '9:15pm', :location => 'Dixon 201', :members => '1', :class_code => 'MUSC3100', :group_name => 'Learn to Sing'},
    {:group_id => '17', :time => '8:30pm', :location => 'Gibson 115', :members => '1', :class_code => 'MATH2210', :group_name => 'Calc III Coping Sesh'},
    {:group_id => '18', :time => '11:00am', :location => 'Basement Howie T', :members => '1', :class_code => 'CELL1010', :group_name => 'The mitochondria is the powerhouse of the cell'},
    {:group_id => '19', :time => '5:30pm', :location => 'The Commons', :members => '1', :class_code => 'MATH3090', :group_name => 'Analyzing Reals'},
    {:group_id => '20', :time => '8:00am', :location => 'Stanley Thomas 311', :members => '1', :class_code => 'CMPS2200', :group_name => 'Algo-rhythms'}
]


more_groups.each do |group|
    Group.create!(group)
end


more_users = [
    {:email => 'abc@test.com', :first_name => 'John', :last_name => 'Appleseed', :password => "something"},
    {:email => 'kimmy23@gmail.com', :first_name => 'Kim', :last_name => 'Possible', :password => "something"},
    {:email => 'bruh@yahoo.com', :first_name => 'Bruh', :last_name => 'Bruh', :password => "something"},
    {:email => 'rufusfan@gmail.com', :first_name => 'Ron', :last_name => 'Stoppable', :password => "something"},
    {:email => 'abuck2@tulane.edu', :first_name => 'Alex', :last_name => 'Buck', :password => "something"},
    {:email => 'thewalrus@hotmail.com', :first_name => 'Kookoo', :last_name => 'Kachoo', :password => "something"},
    {:email => 'octopussgarden@beatles.co.uk', :first_name => 'Ringo', :last_name => 'Starr', :password => "something"},
    {:email => 'mydad@yahoo.com', :first_name => 'Mi', :last_name => 'Padre', :password => "something"},
    {:email => 'president@tulane.edu', :first_name => 'Mike', :last_name => 'Fitts', :password => "something"},
    {:email => 'hdywtdt@gmail.com', :first_name => 'Matthew', :last_name => 'Mercer', :password => "something"},
    {:email => 'obama@whitehouse.gov', :first_name => 'Barack', :last_name => 'Obama', :password => "something"},
    {:email => 'captjack@gmail.com', :first_name => 'Jack', :last_name => 'Sparrow', :password => "something"},
    {:email => 'captjack2@gmail.co.uk', :first_name => 'Jack', :last_name => 'Harkness', :password => "something"},
    {:email => 'bpitt@tulane.edu', :first_name => 'Brad', :last_name => 'Pitt', :password => "something"},
    {:email => 'thelib@tulane.edu', :first_name => 'Howard', :last_name => 'Tilton', :password => "something"},
    {:email => 'bestdorm@tulane.edu', :first_name => 'Lallage Feazel', :last_name => 'Wall', :password => "something"},
    {:email => 'genericuser@yahoo.com', :first_name => 'Firstname', :last_name => 'Lastname', :password => "something"},
    {:email => 'badperson@hotmail.com', :first_name => 'Christopher', :last_name => 'Columbus', :password => "something"},
    {:email => 'ogprez@whitehouse.gov', :first_name => 'George', :last_name => 'Washington', :password => "something"},
    {:email => 'creativename@tulane.edu', :first_name => 'Imoutta', :last_name => 'Ideas', :password => "something"}
]

more_users.each do |user|
    User.create!(user)
end


more_participations = [
    {:group_id => '1', :user_id => '1'},
    {:group_id => '2', :user_id => '2'},
    {:group_id => '3', :user_id => '3'},
    {:group_id => '4', :user_id => '4'},
    {:group_id => '5', :user_id => '5'},
    {:group_id => '6', :user_id => '6'},
    {:group_id => '7', :user_id => '7'},
    {:group_id => '8', :user_id => '8'},
    {:group_id => '9', :user_id => '9'},
    {:group_id => '10', :user_id => '10'},
    {:group_id => '11', :user_id => '11'},
    {:group_id => '12', :user_id => '12'},
    {:group_id => '13', :user_id => '13'},
    {:group_id => '14', :user_id => '14'},
    {:group_id => '15', :user_id => '15'},
    {:group_id => '16', :user_id => '16'},
    {:group_id => '17', :user_id => '17'},
    {:group_id => '18', :user_id => '18'},
    {:group_id => '19', :user_id => '19'},
    {:group_id => '20', :user_id => '20'}
]

more_participations.each do |participation|
    Participation.create!(participation)
end