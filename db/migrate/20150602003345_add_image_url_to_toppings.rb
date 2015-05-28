class AddImageUrlToToppings < ActiveRecord::Migration
  def change
    add_column :toppings, :image_url, :string
  end
end
