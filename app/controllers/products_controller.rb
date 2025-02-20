class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    render :show
  end

  def new
    render json: "new"
  end

  def edit
    render json: "edit"
  end

  def update
  end

  def destroy
  end
end
