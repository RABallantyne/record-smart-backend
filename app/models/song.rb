class Song < ApplicationRecord
  belongs_to :project
  has_many :parts
  validates :song_name, presence: true
end
