class Subject < ApplicationRecord
  has_many :books, dependent: :destroy
end
