class Chapter < ApplicationRecord
  belongs_to :book
  validates :book_id, presence: true
  has_many :topics, dependent: :destroy
end
