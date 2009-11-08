class StoreController < ApplicationController
  
  layout nil
  
  def index
    @products = Product.search(params[:search], params[:page])
  end
end
