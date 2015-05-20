class CreateCustomer < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.text :address
      t.integer :phone
      t.string :email
    end
  end
end
