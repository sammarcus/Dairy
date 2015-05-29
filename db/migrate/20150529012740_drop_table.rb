class DropTable < ActiveRecord::Migration
  def change
    drop_table :flavors
  end
end
