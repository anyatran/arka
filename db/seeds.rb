# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Services
Service.delete_all()
fedex = Service.create!(name: 'FedEx', price: 64.63)
ups = Service.create!(name: 'UPS', price: 60.50)
usps = Service.create!(name: 'USPS', price: 57.33)

# Shipping Addresses
Address.delete_all()
a1 = Address.create!(street: '34020 king st', city: 'Avon', state: 'OH', zip: 44011, country: 'US')
a2 = Address.create!(street: '360 huntington ave', city: 'Boston', state: 'MA', zip: 02115, country: 'US')
a3 = Address.create!(street: '627 oak st', city: 'San Francisco', state: 'CA', zip: 94117, country: 'US')

# Users
User.delete_all()
admin = User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', role: 'admin')
customer = User.create!(email: 'customer@example.com', password: 'password', password_confirmation: 'password', role: 'customer')


# orders
Order.delete_all()
o1 = Order.create!(quantity: 250, user: customer, address: a1, unit_price: 2.50, subtotal: 625.00, service: fedex, total: 744.38, tax: 54.75, status: 'order-placed', mfgName: nil)
