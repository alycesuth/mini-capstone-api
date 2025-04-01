class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")

    if carted_products.empty?
      render json: { error: "No items in cart" }, status: :unprocessable_entity
      return
    end

    @order = Order.create(user_id: current_user.id)

    carted_products.update_all(status: "purchased", order_id: @order.id)

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
