class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
