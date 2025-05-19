class AddCatalogToCategory < ActiveRecord::Migration[8.0]
  def change
    add_reference :categories, :catalog, null: false, foreign_key: true
  end
end
