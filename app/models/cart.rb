class Cart
  attr_accessor :purchases
  
  def initialize
    @purchases = {}
  end
 
  def add(product_id, how_many = 1)
    if Product.exists?(product_id.to_i)
      increase_quantity_for(product_id.to_i, how_many.to_i)
    end
  end
  
  def increase_quantity_for(product_id, for_how_many)
    @purchases[product_id] = quantity_for(product_id) + for_how_many
  end
  
  def quantity_for(product_id)
    @purchases[product_id] || 0
  end
   
  def empty!
    @purchases = {}
  end
  
  def products_with_quantities
    pwq = []
    @purchases.each do |product_id, quantity|
      pwq << [Product.find(product_id), quantity]
    end
    pwq
  end
  
  def remove(product_id)
    @purchases.delete(product_id.to_i)
  end
end
