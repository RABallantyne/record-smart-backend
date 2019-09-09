class Project < ApplicationRecord
  belongs_to :artists
  has_many :songs
end
