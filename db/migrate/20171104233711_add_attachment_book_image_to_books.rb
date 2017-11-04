class AddAttachmentBookImageToBooks < ActiveRecord::Migration[4.2]
  def self.up
    change_table :books do |t|
      t.attachment :book_image
    end
  end

  def self.down
    remove_attachment :books, :book_image
  end
end
