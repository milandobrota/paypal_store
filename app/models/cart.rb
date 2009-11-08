class Cart
  attr_accessor :purchases
  
  def initialize
    @purchases = {}
  end
 
  def add(product_id, how_many = 1)
    puts 'add'
    if Product.exists?(product_id.to_i)
      increase_quantity_for(product_id.to_i, how_many.to_i)
    end
  end
  
  def increase_quantity_for(product_id, for_how_many)
    puts 'increase_quantity_for'
    @purchases[product_id] = quantity_for(product_id) + for_how_many
  end
  
  def quantity_for(product_id)
    @purchases[product_id] || 0
  end
   
  def empty!
    @purchases = {}
  end
  
  def products_with_quantities
    puts "purchases #{@purchases.inspect}"
    pwq = []
    @purchases.each do |product_id, quantity|
      pwq << [Product.find(product_id), quantity]
    end
    pwq
  end
  
  def total_price
    products_with_quantities.inject(0) { |price, product_quantity| price + product_quantity[0].price * product_quantity[1]  }
  end
  
  def remove(product_id)
    @purchases.delete(product_id.to_i)
  end
end
