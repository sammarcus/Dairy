class AddOrderIdToContainments < ActiveRecord::Migration
  def change
    add_column :containments, :order_id, :integer
  end
end
