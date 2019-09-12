class Part < ApplicationRecord
  belongs_to :song
  validates :part_name, presence: true
end
