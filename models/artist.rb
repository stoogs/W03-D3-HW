require('pg')
require_relative('../db/sql_runner')

class Artist

attr_reader :id, :artist

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @artist = options["artist"]
  end

def save()
  sql = "INSERT INTO artists (artist) VALUES ($1) RETURNING id"
  values = [@artist]
  artists = SqlRunner.run(sql,values)
  @id = artists[0]["id"].to_i
end



end #end class
















































# class Customer
#
#   attr_reader :id, :name
#   attr_writer :name
#
#   def initialize(options)
#     @id = options['id'].to_i if options['id']
#     @name = options['name']
#   end
#
#   def save()
#     sql = "INSERT INTO customers (name) VALUES ($1)RETURNING id"
#     values = [ @name ]
#     customers = SqlRunner.run(sql, values)
#     @id = customers[0]["id"].to_i
#   end
#
#   def update()
#     sql = "UPDATE customers SET
#       name
#     =
#       $1
#     WHERE id = $2"
#     values = [@name, @id]
#     SqlRunner.run(sql, values)
#   end
#
#   def delete()
#     sql = "DELETE FROM customers where id = $1"
#     values = [@id]
#     SqlRunner.run(sql, values)
#   end
#
#   def self.delete_all()
#     sql = "DELETE FROM customers"
#     SqlRunner.run(sql)
#   end
#
#   def self.all()
#     sql = "SELECT * FROM customers"
#     customers = SqlRunner.run(sql)
#     return customers.map { |customer_hash| Customer.new(customer_hash) }
#   end
# end

# require_relative('pizza_order')
# require('pg')
#
# class Customer
#
#   attr_reader :id, :name
#   attr_writer :name
#
#   def initialize(options)
#     @id = options['id'].to_i if options['id']
#     @name = options['name']
#   end
#
#   def save()
#     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     sql = "INSERT INTO customers
#     (
#       name
#     ) VALUES
#     (
#       $1
#     )
#     RETURNING id"
#     values = [ @name ]
#     db.prepare("save", sql)
#     @id = db.exec_prepared("save", values)[0]["id"].to_i
#     db.close()
#   end
#
#   def update()
#     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     sql = "
#     UPDATE customers SET
#       name
#     =
#       $1
#     WHERE id = $2"
#     values = [@name, @id]
#     db.prepare("update", sql)
#     db.exec_prepared("update", values)
#     db.close()
#   end
#
#   def delete()
#     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     sql = "DELETE FROM customers where id = $1"
#     values = [@id]
#     db.prepare("delete", sql)
#     db.exec_prepared("delete", values)
#     db.close()
#   end
#
#   def self.delete_all()
#     db = PG.connect( { dbname: 'pizza_shop', host: 'localhost' } )
#     sql = "DELETE FROM customers"
#     db.prepare("delete_all", sql)
#     result = db.exec_prepared("delete_all")
#     db.close()
#   end
#
#   def self.all()
#     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
#     sql = "SELECT * FROM customers"
#     db.prepare("all", sql)
#     orders = db.exec_prepared("all")
#     db.close()
#     return orders.map { |order| PizzaOrder.new(order) }
#   end
# end
# # #require_relative('pizza_order')
# # require('pg')
# # class Customer
# #
# # attr_accessor :id, :name
# #
# # def initialize(options)
# #   @name = options['name']
# #   @id = options['id'].to_i if options['id']
# # end #def initilize end
# #
# #
# #   def save()
# #     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
# #     sql = "INSERT INTO customers
# #     (
# #       name
# #     ) VALUES
# #     (
# #       $1
# #     )
# #     RETURNING id"
# #     values = [ @name ]
# #     db.prepare("save", sql)
# #     @id = db.exec_prepared("save", values)[0]["id"].to_i
# #     db.close()
# #   end
# #
# #   def update()
# #     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
# #     sql = "
# #     UPDATE customers
# #     SET name = $1
# #     WHERE id = $2"
# #     values = [@name, @id]
# #     db.prepare("update", sql)
# #     db.exec_prepared("update", values)
# #     db.close()
# #   end
# #
# #   def delete()
# #     db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
# #     sql = "
# #     DELETE FROM customers
# #     WHERE id = $1"
# #     values =  [@id]
# #     db.prepare("delete", sql)
# #     db.exec_prepared("delete", values)
# #     db.close()
# #   end
# # end
