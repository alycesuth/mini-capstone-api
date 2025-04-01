class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def subtotal
    # carted_products = CartedProduct.where(user_id: user_id, status: "purchased")
    carted_products.sum { |prod| prod.product.price * prod.quantity }
  end

  def tax
    subtotal * 0.09
  end

  def total
    subtotal + tax
  end
end
