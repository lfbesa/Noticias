class Opinion < ApplicationRecord
  belongs_to :news
  validates_presence_of :author, :comment
end
