# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bank.destroy_all
User.destroy_all
Account.destroy_all
Transfer.destroy_all
Loan.destroy_all

10.times {Bank.create(name: Faker::Bank.unique.name)}
10.times {User.create(username: Faker::Name.unique.name, password: "lalalala" )}
20.times {Account.create(user: User.all.sample, bank: Bank.all.sample, balance: rand(1.00..500000.00))}
30.times {Transfer.create(sender: Account.all.sample, receiver: Account.all.sample, amount: rand(0.00..100.00), pending?: false)}
20.times {Loan.create(bank: Bank.all.sample, account: Account.all.sample, amount: rand(1000.00..10000.00), interest_rate: rand(0.00..10.00))}


