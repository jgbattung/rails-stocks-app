json.extract! stock, :id, :company_code, :company_name, :latest_price, :change, :change_percent, :change_percent_s, :created_at, :updated_at
json.url stock_url(stock, format: :json)
