class AddAttachmentColumnToFlavors < ActiveRecord::Migration
  def change
    add_attachment :flavors, :avatar
  end
end
