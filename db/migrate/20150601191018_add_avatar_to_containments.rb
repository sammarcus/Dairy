class AddAvatarToContainments < ActiveRecord::Migration
  def change
    add_column :containments, :avatar, :string
  end
end
