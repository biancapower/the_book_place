class Book < ApplicationRecord
  belongs_to :user

  def self.search(search)
    where("title ILIKE ? OR author ILIKE ? OR category ILIKE ? OR isbn10 ILIKE ? OR isbn13 ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end

end
