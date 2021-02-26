class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :eat

  validates :text, presence: true
end
