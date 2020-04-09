user = User.new
user.employee_id = 1
user.email = 'girl@gmail.com'
user.password = 'Middleout1'
user.admin = true
user.save!

user2 = User.new
user2.employee_id = 2
user2.email = 'guy@gmail.com'
user2.password = 'Middleout1'
user2.admin = true
user2.save!