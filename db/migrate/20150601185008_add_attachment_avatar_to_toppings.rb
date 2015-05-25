class AddAttachmentAvatarToToppings < ActiveRecord::Migration
  def self.up
    change_table :toppings do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :toppings, :avatar
  end
end

