class Book < ApplicationRecord
  belongs_to :author
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true


  def price_with_tax
    price * 1.08
  end
end
