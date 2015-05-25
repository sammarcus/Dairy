class AddAvatarToToppings < ActiveRecord::Migration
  def change
    add_column :toppings, :avatar, :string
  end
end
