class Comment < ApplicationRecord
  belongs_to :news
  belongs_to :user
  validates :body, presence: true, allow_blank: false
end
