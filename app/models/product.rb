class Product < ApplicationRecord

  validates :name, :description, :price, :availability_date, :slug, :stock_total, :category, presence: true

end
