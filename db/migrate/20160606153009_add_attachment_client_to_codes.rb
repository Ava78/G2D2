class AddAttachmentClientToCodes < ActiveRecord::Migration
  def self.up
    change_table :codes do |t|
      t.attachment :client
    end
  end

  def self.down
    remove_attachment :codes, :client
  end
end
