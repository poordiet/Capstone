user = User.new
user.employee_id = 1
user.email = 'peekabool@gmail.com'
user.password = 'Middleout1'
user.admin = true
user.save!

user2 = User.new
user2.employee_id = 2
user2.email = 'peekaboo2@gmail.com'
user2.password = 'Middleout1'
user2.admin = true
user2.save!

user3 = User.new
user3.employee_id = 3
user3.email = 'peekaboo3@gmail.com'
user3.password = 'Middleout1'
user3.admin = false
user3.save!