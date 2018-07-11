require('pg')
require_relative("../db/sql_runner")

class Album

attr_accessor :id, :album_title, :genre, :artist_id

  def initialize(options)
    @id = options["id"]
    @album_title = options["title"]
    @genre = options["genre"]
    @artist_id = options["artist_id"]
  end



end #class end










































#   attr_accessor :customer_id, :topping, :quantity
#   attr_reader :id
#
#   def initialize(options)
#     @customer_id = options['customer_id'].to_i
#     @topping = options['topping']
#     @quantity = options['quantity'].to_i
#     @id = options['id'].to_i if options['id']
#   end
#
#   def save()
#     sql = "INSERT INTO pizza_orders
#     (customer_id,topping,quantity) VALUES ($1, $2, $3)RETURNING id"
#     values = [@customer_id, @topping, @quantity]
#     orders = SqlRunner.run(sql, values)
#     @id = orders[0]["id"].to_i     #column number
#
#     # db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     # db.prepare("save", sql)
#     # @id = db.exec_prepared("save", values)[0]["id"].to_i
#     # db.close()
#   end
#
#   def update()
#     sql = "UPDATE pizza_orders SET (customer_id,topping,quantity) = ($1,$2, $3) WHERE id = $4"
#     values = [@customer_id, @topping, @quantity, @id]
#     SqlRunner.run(sql, values)
#     # db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     # db.prepare("update", sql)
#     # db.exec_prepared("update", values)
#     # db.close()
#   end
#
#   def delete()
#     sql = "DELETE FROM pizza_orders where id = $1"
#     values = [@id]
#     SqlRunner.run(sql, values)
#     # db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     # db.prepare("delete", sql)
#     # db.exec_prepared("delete", values)
#     # db.close()
#   end
#
#   def self.find(id)
#     sql = "SELECT * FROM pizza_orders WHERE id = $1"
#     values = [id]
#     order_hash = SqlRunner.run(sql, values)
#     order = PizzaOrder.new(order_hash.first)
#     return order
#   end
#
#   def self.delete_all()
#       sql = "DELETE FROM pizza_orders"
#       SqlRunner.run(sql)
#   end
#
#   def self.all()
#     sql = "SELECT * FROM pizza_orders"
#     orders = SqlRunner.run(sql)
#     return orders.map { |order| PizzaOrder.new(order) }
#   end
#
#
# def pizza_orders
#
# end
#
#
# end
# require('pg')
#
# class PizzaOrder
#
#   attr_accessor :customer_id, :topping, :quantity
#   attr_reader :id
#
#   def initialize(options)
#     @customer_id = options['customer_id'].to_i
#     @topping = options['topping']
#     @quantity = options['quantity'].to_i
#     @id = options['id'].to_i if options['id']
#   end
#
#   def save()
#
#     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     sql = "INSERT INTO pizza_orders
#     (xustomer_id,topping,quantity) VALUES
#     ($1, $2,$3)
#     RETURNING id"
#     values = [@first_name, @last_name, @topping, @quantity]
#     db.prepare("save", sql)
#     @id = db.exec_prepared("save", values)[0]["id"].to_i
#     db.close()
#   end
#
#   def update()
#     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     sql = "
#     UPDATE pizza_orders SET (name,topping,quantity) = ($1,$2, $3)
#     WHERE id = $4"
#     values = [@customer_id, @topping, @quantity, @id]
#     db.prepare("update", sql)
#     db.exec_prepared("update", values)
#     db.close()
#   end
#
#   def delete()
#     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     sql = "DELETE FROM pizza_orders where id = $1"
#     values = [@id]
#     db.prepare("delete", sql)
#     db.exec_prepared("delete", values)
#     db.close()
#   end
#
#   def self.find(id)
#     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     sql = "SELECT * FROM pizza_orders WHERE id = $1"
#     values = [id]
#     db.prepare("find", sql)
#     results = db.exec_prepared("find", values)
#     db.close()
#     order_hash = results.first
#     order = PizzaOrder.new(order_hash)
#     return order
#   end
#
#   def self.delete_all()
#     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     sql = "DELETE FROM pizza_orders"
#     db.prepare("delete_all", sql)
#     db.exec_prepared("delete_all")
#     db.close()
#   end
#
#   def self.all()
#     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     sql = "SELECT * FROM pizza_orders"
#     db.prepare("all", sql)
#     orders = db.exec_prepared("all")
#     db.close()
#     return orders.map { |order| PizzaOrder.new(order) }
#   end
#
# end
