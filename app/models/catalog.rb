class Catalog < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many :products, through: :categories
end
