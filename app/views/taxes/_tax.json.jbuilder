json.extract! tax, :id, :name, :tax_number, :description, :periods, :start_date, :created_at, :updated_at
json.url tax_url(tax, format: :json)
