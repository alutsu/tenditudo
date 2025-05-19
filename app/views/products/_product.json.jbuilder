json.extract! product, :id, :name, :description, :price, :visible, :category_id, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
