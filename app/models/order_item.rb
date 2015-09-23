class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates :product_id, :order_id, presence: true

  def subtotal
    return product.price*quantity
  end

end
