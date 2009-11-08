class Product < ActiveRecord::Base
  belongs_to :category
  
  validates_numericality_of :price
  validates_presence_of :name
  
  def category_name
    self.category.nil? ? "None" : self.category.name
  end
  
  def self.search(search, page)
    paginate(
      :page => page,
      :per_page => 5,
      :conditions => ['name like ? or description like ?', "%#{search}%", "%#{search}%"],
      :order => 'name'
    )
  end
end
