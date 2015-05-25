class AddAttachmentColumnToContainments < ActiveRecord::Migration
  def change
    add_attachment :containments, :avatar
  end
end
