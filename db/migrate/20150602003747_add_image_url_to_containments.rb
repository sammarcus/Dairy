class AddImageUrlToContainments < ActiveRecord::Migration
  def change
    add_column :containments_path, :image_url, :string
  end
end
