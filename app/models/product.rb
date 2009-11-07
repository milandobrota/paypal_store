class Product < ActiveRecord::Base
  belongs_to :category
  
  def category_name
    self.category.nil? ? "None" : self.category.name
  end
end
