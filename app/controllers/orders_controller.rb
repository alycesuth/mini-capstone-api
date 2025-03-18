class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])

    @order = Order.create(
      user_id: current_user.id,
      product_id: product.id,
      quantity: params[:quantity]
    )
    render :show
  end

  def index
    @orders = Order.where(user_id: current_user.id)
    render :index
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end
end
