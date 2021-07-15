class Book < ApplicationRecord
  def self.search(keyword)
    where(["title like? OR price like?", "%#{keyword}%", "%#{keyword}%"])
  end
end
