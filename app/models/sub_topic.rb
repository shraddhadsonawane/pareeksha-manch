class SubTopic < ApplicationRecord
  belongs_to :topic
  validates :topic_id, presence: true
end
