class RemoveQuantityFromProducts < ActiveRecord::Migration
  def self.up
    remove_column :products, :quantity
  end

  def self.down
    add_column :products, :quantity, :integer
  end
end
