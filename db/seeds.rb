# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Money.destroy_all
User.destroy_all
Vault.destroy_all


u1 = User.create(name: "Taiye Salami", password_digest: "lipcnr43on53n", age: 25, email: "tman@gmail.com", SSN: "423-56-9824", total_deposited: 20, total_withdrawn: 0)
u2 = User.create(name: "Paul Berth", password_digest: "nka3bklr8brb9", age: 22, email: "peebee@gmail.com", SSN: "114-90-1520", total_deposited: 30, total_withdrawn: 0)
u3 = User.create(name: "Dele Badero", password_digest: "hushh8q43brh5", age: 24, email: "greatdele@gmail.com", SSN: "724-87-7648", total_deposited: 40, total_withdrawn: 0)


v1 = Vault.create(round: 1, total_amount: 90, user_to_withdraw: u1.name)
v2 = Vault.create(round: 2, total_amount: 150, user_to_withdraw: u2.name)
v3 = Vault.create(round: 3, total_amount: 250, user_to_withdraw: u3.name)


Money.create(round: 1, amount: 20, user_id: u1.id, vault_id: v1.id, date_deposited: "2020-10-15")
Money.create(round: 1, amount: 30, user_id: u2.id, vault_id: v1.id, date_deposited: "2020-10-16")
Money.create(round: 1, amount: 40, user_id: u3.id, vault_id: v1.id, date_deposited: "2020-10-17")



