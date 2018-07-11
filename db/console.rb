require("pry")
require_relative("../models/album")
require_relative("../models/artist")


artist1 = Artist.new('artist' => 'Oasis')
artist1.save()

artist2 = Artist.new('artist' => 'Oasis')
artist2.save()

album1 = Album.new('title' => 'Various Artists', 'genre' => 'Rock')
album1.save()

p Album.all()
p Artist.all()

# :album_title, :genre, :artist_id





#test delete_all
# Customer.delete_all()




# customer1 = Customer.new({'name' => 'Melinda'})
# customer2 = Customer.new({'name' => 'Tony'})
# customer1.save()
# customer2.save()
# # test update
# customer1.name = "Mellinda"
# customer1.update()
# #test delete
# customer2.delete()
# #test all
# p Customer.all()
#
# pizza_order1 = PizzaOrder.new({'customer_id' => customer1.id,'topping' => 'Tropicana','quantity' => '3'})
# pizza_order2 = PizzaOrder.new({'customer_id' => customer1.id,'topping' => 'Tropicana','quantity' => '3'})
#
# pizza_order1.save()
# pizza_order2.save()
# #test update
# pizza_order1.topping = "Diabolla"
# pizza_order1.update()
# #test delete
# pizza_order2.delete()
# #test all
# p PizzaOrder.all()
# ###############################################################
