# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Admin.create!(
	[
		{
			email:"takuya_collection@gmail.com",
			password:"ta98509tion"
		}
	]
	)


User.create!(
	[
		{
			name:"テスト",
			telephone_number:"000-0000-0000",
			postal_code:"000-0000",
			address:"滋賀",
			email:"0@0",
			password:"111111"
		}
	]
	)


Market.create!(
	[
		{
			day:"4月25日",
			content:"浦和"
		},
		{
			day:"5月9日",
			content:"越谷"
		}
	]
	)
