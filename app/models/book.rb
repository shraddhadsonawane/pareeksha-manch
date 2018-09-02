class Book < ApplicationRecord
  belongs_to :subject
  validates :subject_id, presence: true
  has_many :chapters, dependent: :destroy
end
