class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  def subtotal
    prod = Product.find_by(id: product_id)
    quantity * prod.price
  end

  def tax
    subtotal * 0.09
  end

  def total
    subtotal + tax
  end
end
