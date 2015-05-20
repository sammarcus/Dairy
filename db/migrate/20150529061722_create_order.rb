class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :containment_id
      t.integer :flavor_id
    end
  end
end
