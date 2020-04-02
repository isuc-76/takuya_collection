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
			password:"000000"
		}
	]
	)


User.create!(
	[
		{
			name:"テスト",
			telephone_number:"000-0000-0000",
			postal_code:"000-0000",
			address:"千葉",
			email:"1@1",
			password:"111111"
		},
		{
			name:"インド",
			telephone_number:"222-2222-2222",
			postal_code:"222-2222",
			address:"滋賀",
			email:"2@2",
			password:"222222"
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


Store.create!(
	[
		{
			comment:"ようこそ"
		}
	]
	)
