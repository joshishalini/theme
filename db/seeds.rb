# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless User.find_by_name('shalini').present?
	@user = User.new(name: 'shalini').save(validate: false)
	role_arr =[{role_name: 'Admin'},{role_name: 'Moderator'},{role_name: 'Editor'}]
	@role = Role.create(role_arr)
end


