class Category < ApplicationRecord
  belongs_to :user
  belongs_to :catalog
  has_many :products
  # or has_and_belongs_to_many :products if products can be in multiple categories
end
