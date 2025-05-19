json.extract! catalog, :id, :name, :description, :visible, :user_id, :created_at, :updated_at
json.url catalog_url(catalog, format: :json)
