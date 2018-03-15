class News < ApplicationRecord
  validates :titular, length: { maximum: 200 }
  validates :bajada, length: { maximum: 200 }
  has_many :comments, dependent: :destroy
end
