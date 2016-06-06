class AddAttachmentImageToCodes < ActiveRecord::Migration
  def self.up
    change_table :codes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :codes, :image
  end
end
