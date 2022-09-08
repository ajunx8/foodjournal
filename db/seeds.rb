# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken'
u2 = User.create :email => 'craigsy@ga.co', :password => 'chicken'
puts "#{ User.count } users."

Food.destroy_all
f1 = Food.create :name => 'Apple pie', :image => 'https://www.fillmurray.com/301/302', :description => 'From McDonalds'
f2 = Food.create :name => 'Scrambled eggs', :image => 'https://www.fillmurray.com/300/302', :description => 'Best way to cook eggs'
f3 = Food.create :name => 'Hot chips', :image => 'https://www.fillmurray.com/300/300', :description => 'With chicken salt!'
f4 = Food.create :name => 'Corn', :image => 'https://images.unsplash.com/photo-1634467524884-897d0af5e104?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80', :description => 'Buttered on the BBQ'
f5 = Food.create :name => 'Spaghetti Bolognese', :image => 'https://www.fillmurray.com/270/259', :description => 'Home made by Me'
f6 = Food.create :name => 'Falafel burger', :image => 'https://www.fillmurray.com/294/278', :description => 'Kebab Shop'
f7 = Food.create :name => 'Caesar salad', :image => 'https://www.fillmurray.com/250/267', :description => 'With the crunchy bread crumbs'
puts "#{ Food.count } foods."

Log.destroy_all
l1 = Log.create :date => '1997-12-15', :description => 'This was my first apple pie. Jonesy'
l2 = Log.create :date => '1998-11-12', :description => 'The first time I had an apple pie. craigsy'
l3 = Log.create :date => '1999-4-27', :description => 'I remember this particular apple pie'
l4 = Log.create :date => '2022-09-03', :description => 'chips from el Jannah, 7/10'
l5 = Log.create :date => '2022-09-02', :description => 'chips from the rsl, with chicken salt, 7/10'
l6 = Log.create :date => '2022-08-24', :description => 'made these eggs in the morning for myself'
l7 = Log.create :date => '2022-08-21', :description => 'buttered corn, with friends after a hike'
l8 = Log.create :date => '2022-08-11', :description => 'Too much salt for my liking'
l9 = Log.create :date => '2022-08-30', :description => 'Very happy with the meat balls'
l10 = Log.create :date => '2022-08-02', :description => 'Spaghetti was al dente'
l11 = Log.create :date => '2022-08-04', :description => 'Falafel was burnt'
l12 = Log.create :date => '2022-08-06', :description => 'the texture of the falafel was just right'
l13 = Log.create :date => '2022-08-07', :description => "surprising good from Jim's kebab shop"
l14 = Log.create :date => '2022-08-08', :description => 'dressing was too sweet at the RSL'
l15 = Log.create :date => '2022-08-09', :description => 'perfection'
l16 = Log.create :date => '2022-08-10', :description => 'the bread crumbs were great'
puts "#{ Log.count } logs."

Tag.destroy_all
t1 = Tag.create :name => 'breakfast'
t2 = Tag.create :name => 'lunch'
t3 = Tag.create :name => 'dinner'
t4 = Tag.create :name => 'snack'
t5 = Tag.create :name => 'salad'
t6 = Tag.create :name => 'McDonalds'
t7 = Tag.create :name => 'Favourite'
t8 = Tag.create :name => 'No thanks'
t9 = Tag.create :name => 'Pub feeds'
t10 = Tag.create :name => 'Fine dining'
t11 = Tag.create :name => 'dessert'
t12 = Tag.create :name => 'trans-fats'
t13 = Tag.create :name => 'healthy'
t14 = Tag.create :name => 'vegan'
t15 = Tag.create :name => 'non-vegan'
puts "#{ Tag.count } tags."

######## Associations ########
puts "Foods and Users"
u1.foods << f1 << f2 << f3
u2.foods << f4 << f5 << f6 << f7 << f1

puts "Logs and Users"
u1.logs << l1 << l3 << l4 << l5 << l6
u2.logs << l2 << l7 << l8 << l9 << l10 << l11 << l12 << l13 << l14 << l15 << l16

puts "Logs and Foods"
f1.logs << l1 << l2 << l3
f2.logs << l6
f3.logs << l4 << l5
f4.logs << l7
f5.logs << l8 << l9 << l10
f6.logs << l11 << l12 << l13
f7.logs << l14 << l15 << l16

puts "Tags and Logs"
l1.tags << t11 << t7 << t12
l2.tags << t8 << t12 << t14
l3.tags << t12 << t14
l4.tags << t12 << t14
l5.tags << t12 << t14
l6.tags << t1
l7.tags << t14 << t7 << t4
l8.tags << t2 << t9
l9.tags << t7 << t2
l10.tags << t7 << t3
l11.tags << t8
l12.tags << t13 << t14 
l13.tags << t13 << t14
l14.tags << t12 << t9
l15.tags << t7 << t12 << t14
l16.tags << t15
