class MyPurchasesController < ApplicationController

  layout nil
  
  before_filter :find_cart  
  
  def create
    @cart.add(params[:product_id], params[:how_many])
    puts "cart after adding: #{@cart.inspect}"
    redirect_to :action => 'show'
  end
  
  def show
  end
  
  def destroy
    @cart.empty!
    render :action => 'show'
  end
  
  def remove
    @cart.remove(params[:product_id])
    render :action => 'show'
  end
  
  #private
  
  def find_cart
    @cart = (session[:cart] ||= Cart.new)
  end

end
