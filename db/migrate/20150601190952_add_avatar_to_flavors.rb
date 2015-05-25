class AddAvatarToFlavors < ActiveRecord::Migration
  def change
    add_column :flavors, :avatar, :string
  end
end
