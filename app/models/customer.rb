class Customer < ApplicationRecord
  # has_and_belongs_to_many :orders
  has_many :orders
  
  # has_many :items, through: orders:
end
