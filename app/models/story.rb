class Story < ApplicationRecord
  belongs_to :paw
  validates :body, length: { minimum: 500 },allow_blank: true
end
