json.extract! transaction, :id, :stock_name, :type, :price, :shares, :user_id, :stock_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
