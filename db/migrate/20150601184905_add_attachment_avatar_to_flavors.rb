class AddAttachmentAvatarToFlavors < ActiveRecord::Migration
  def self.up
    change_table :flavors do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :flavors, :avatar
  end
end
