class News < ApplicationRecord
  validates :title, length: { maximum: 200 }
  validates :subtitle, length: { maximum: 200 }
  validates_presence_of :title, :body
  has_many :opinions, dependent: :destroy
end
