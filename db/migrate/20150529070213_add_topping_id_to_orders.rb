class AddToppingIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :topping_id, :integer
  end
end
