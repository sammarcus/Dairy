class AddAttachmentColumnToToppings < ActiveRecord::Migration
  def change
    add_attachment :toppings, :avatar
  end
end
