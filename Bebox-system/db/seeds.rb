# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.create(name: 'mohamed1', phone: '50487899' , company: 'cafe sousse',email:"jihedmessaoud@gmail.com")
Customer.create(name: 'mohamed2', phone: '50487899' , company: 'cafe tunis',email:"jihedmessaoud@gmail.com")
Customer.create(name: 'mohamed3', phone: '50487899' , company: 'cafe sfax',email:"jihedmessaoud@gmail.com")
Customer.create(name: 'mohamed4', phone: '50487899' , company: 'cafe gabes',email:"jihedmessaoud@gmail.com")
Customer.create(name: 'mohamed5', phone: '50487899' , company: 'cafe monastir',email:"jihedmessaoud@gmail.com")
Customer.create(name: 'mohamed6', phone: '50487899' , company: 'cafe tatawin',email:"jihedmessaoud@gmail.com")
Bebox.create(reference: "refd" , location: "sousse", category: 1 , customer_id: 4)
Bebox.create(reference: "lkmk" , location: "sousse" , category: 2 , customer_id: 4)
Bebox.create(reference: "kljlkj" , location: "sous" , category: 3 , customer_id: 4)
Bebox.create(reference: "sqxcw" , location: "sousse" , category: 5 , customer_id: 4)
Bebox.create(reference: "nbb" , location: "sousse" , category: 9 , customer_id: 4)
Bebox.create(reference: "opio" , location: "sousse" , category: 8 , customer_id: 4)
