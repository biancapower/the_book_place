class Book < ApplicationRecord
  belongs_to :user

  has_attached_file :book_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :book_image, content_type: /\Aimage\/.*\z/

  def self.search(search)
    where("title ILIKE ? OR author ILIKE ? OR category ILIKE ? OR isbn10 ILIKE ? OR isbn13 ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
