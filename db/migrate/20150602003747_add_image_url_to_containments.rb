class AddImageUrlToContainments < ActiveRecord::Migration
  def change
    add_column :containments, :image_url, :string
  end
end
