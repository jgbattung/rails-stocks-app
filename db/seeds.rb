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
  password_confirmation: '123456789',
  role: 'admin'
)
admin.skip_confirmation!
admin.save!

user1 = User.new(
  email: 'trader@trader.com', 
  password: '123456789', 
  password_confirmation: '123456789',
  role: 'trader'
)
user1.skip_confirmation!
user1.save!

# STOCKS

@aapl = Stock.client.quote('AAPL')
Stock.create(
  company_code: @aapl['symbol'], 
  company_name: @aapl['company_name'],
  latest_price: @aapl['latest_price'],
  change: @aapl['change'],
  change_percent: @aapl['change_percent'],
  change_percent_s: @aapl['change_percent_s'],
)

@msft = Stock.client.quote('MSFT')
Stock.create(
  company_code: @msft['symbol'], 
  company_name: @msft['company_name'],
  latest_price: @msft['latest_price'],
  change: @msft['change'],
  change_percent: @msft['change_percent'],
  change_percent_s: @msft['change_percent_s'],
)

@goog = Stock.client.quote('GOOG')
Stock.create(
  company_code: @goog['symbol'], 
  company_name: @goog['company_name'],
  latest_price: @goog['latest_price'],
  change: @goog['change'],
  change_percent: @goog['change_percent'],
  change_percent_s: @goog['change_percent_s'],
)

@amzn = Stock.client.quote('AMZN')
Stock.create(
  company_code: @amzn['symbol'], 
  company_name: @amzn['company_name'],
  latest_price: @amzn['latest_price'],
  change: @amzn['change'],
  change_percent: @amzn['change_percent'],
  change_percent_s: @amzn['change_percent_s'],
)

@tsla = Stock.client.quote('TSLA')
Stock.create(
  company_code: @tsla['symbol'], 
  company_name: @tsla['company_name'],
  latest_price: @tsla['latest_price'],
  change: @tsla['change'],
  change_percent: @tsla['change_percent'],
  change_percent_s: @tsla['change_percent_s'],
)

@brkb = Stock.client.quote('BRKB')
Stock.create(
  company_code: @brkb['symbol'], 
  company_name: @brkb['company_name'],
  latest_price: @brkb['latest_price'],
  change: @brkb['change'],
  change_percent: @brkb['change_percent'],
  change_percent_s: @brkb['change_percent_s'],
)

@unh = Stock.client.quote('UNH')
Stock.create(
  company_code: @unh['symbol'], 
  company_name: @unh['company_name'],
  latest_price: @unh['latest_price'],
  change: @unh['change'],
  change_percent: @unh['change_percent'],
  change_percent_s: @unh['change_percent_s'],
)

@meta = Stock.client.quote('META')
Stock.create(
  company_code: @meta['symbol'], 
  company_name: @meta['company_name'],
  latest_price: @meta['latest_price'],
  change: @meta['change'],
  change_percent: @meta['change_percent'],
  change_percent_s: @meta['change_percent_s'],
)

@jnj = Stock.client.quote('JNJ')
Stock.create(
  company_code: @jnj['symbol'], 
  company_name: @jnj['company_name'],
  latest_price: @jnj['latest_price'],
  change: @jnj['change'],
  change_percent: @jnj['change_percent'],
  change_percent_s: @jnj['change_percent_s'],
)

@v = Stock.client.quote('V')
Stock.create(
  company_code: @v['symbol'], 
  company_name: @v['company_name'],
  latest_price: @v['latest_price'],
  change: @v['change'],
  change_percent: @v['change_percent'],
  change_percent_s: @v['change_percent_s'],
)