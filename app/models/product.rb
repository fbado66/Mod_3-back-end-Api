class Product < ApplicationRecord
  belongs_to :category

  has_many :reviews, :dependent => :destroy
  has_many :add_products, :dependent => :destroy
end
