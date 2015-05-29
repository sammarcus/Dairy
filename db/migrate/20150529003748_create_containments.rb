class CreateContainments < ActiveRecord::Migration
  def change
    create_table :containments do |t|
      t.string :name
    end
  end
end
