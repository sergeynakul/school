if Admin.count.zero?
	puts 'Seeding Admins'
	Admin.create!(email: 'admin@one.com', first_name: 'Admin', last_name: 'One', password: '123456', password_confirmation: '123456')
end