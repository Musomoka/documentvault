json.extract! document, :id, :name, :description, :image, :per_from, :per_to, :created_at, :updated_at
json.url document_url(document, format: :json)