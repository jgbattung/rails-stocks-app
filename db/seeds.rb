# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# USERS

admin = User.new(
  email: 'admin@trader.com', 
  password: '123456789', 
  password_confirmation: '123456789'
  # role: 'admin'
)
admin.skip_confirmation!
admin.save!

user1 = User.new(
  email: 'trader@trader.com', 
  password: '123456789', 
  password_confirmation: '123456789'
  # role: 'trader'
)
user1.skip_confirmation!
user1.save!

# STOCKS

@aapl = Stock.client.quote('AAPL')

@msft = Stock.client.quote('MSFT')

@goog = Stock.client.quote('GOOG')

@amzn = Stock.client.quote('AMZN')

@tsla = Stock.client.quote('TSLA')

@brkb = Stock.client.quote('BRKB')

@unh = Stock.client.quote('UNH')

@meta = Stock.client.quote('META')

@jnj = Stock.client.quote('JNJ')

@v = Stock.client.quote('V')