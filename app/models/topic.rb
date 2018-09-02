class Topic < ApplicationRecord
  belongs_to :chapter
  validates :chapter_id, presence: true
  has_many :sub_topics, dependent: :destroy
end
