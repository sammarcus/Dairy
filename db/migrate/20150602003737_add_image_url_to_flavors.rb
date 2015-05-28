class AddImageUrlToFlavors < ActiveRecord::Migration
  def change
    add_column :flavors, :image_url, :string
  end
end
