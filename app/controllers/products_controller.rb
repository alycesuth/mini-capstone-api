class ProductsController < ApplicationController
  def all_products_method
    @products = Product.all
    render template: "products/index"
  end

  def misfits
    @product = Product.first
    render template: "products/show"
  end

  def descendents
    @product = Product.second
    render template: "products/show"
  end

  def black_flag
    @product = Product.third
    render template: "products/show"
  end
end
