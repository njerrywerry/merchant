class Product < ActiveRecord::Base
  def price=(input)
  input.delete!("$")
  super
  end
end
