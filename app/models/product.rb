class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_one_attached :image

  # You could add this to access the catalog:
  has_one :catalog, through: :category
end
