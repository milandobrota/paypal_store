class StoreController < ApplicationController
  
  layout nil
  
  def index
    @products = Product.all
  end
end
