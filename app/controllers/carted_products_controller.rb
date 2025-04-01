class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil
    )
    render :show
  end

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render :index
  end

  def destroy
    @carted_product = CartedProduct.find_by(product_id: params[:product_id])

    if @carted_product
      @carted_product.update(status: "removed")
      render json: { message: "Item successfully removed from cart." }
    else
      render json: { message: "Item not found in cart." }
    end
  end
end
