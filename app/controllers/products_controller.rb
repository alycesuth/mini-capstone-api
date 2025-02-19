class ProductsController < ApplicationController
  def all_products_method
    @products = Product.all
    render template: "products/index"
  end
end
