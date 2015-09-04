class Product < ActiveRecord::Base
  validates_numericality_of :price
end
