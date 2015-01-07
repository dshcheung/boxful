class AddAttachmentAvatarToBoxes < ActiveRecord::Migration
  def self.up
    change_table :boxes do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :boxes, :avatar
  end
end
