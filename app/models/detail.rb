class Detail < ApplicationRecord
  belongs_to :customize

  validates :detail,           presence: true
end
