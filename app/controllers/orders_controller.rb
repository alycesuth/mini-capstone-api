class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")

    @order = Order.create(user_id: current_user.id)

    carted_products.update_all(status: "purchased", order_id: @order.id)

    if @order.valid?

      index = 0
      while index < carted_products.length
        carted_product = carted_products[index]
        carted_product.update(status: "purchased", order_id: @order.id)
        index += 1
      end

      render :show
    else
      render json: { errors: @order.errors.full_messages }, status: 422
    end
  end

  def index
    @orders = Order.where(user_id: current_user.id)
    render :index
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])

    if @order
      render :show
    else
      render json: { error: "Order not found" }, status: :not_found
    end
  end
end
