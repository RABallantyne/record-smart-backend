class Project < ApplicationRecord
  belongs_to :artist
  has_many :songs
  validates :project_name, presence: true, uniqueness: true
end
