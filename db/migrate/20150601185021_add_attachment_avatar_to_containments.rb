class AddAttachmentAvatarToContainments < ActiveRecord::Migration
  def self.up
    change_table :containments do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :containments, :avatar
  end
end
