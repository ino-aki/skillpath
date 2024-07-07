class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :qualification

  validates :content, presence: true
end
