class Artist < ApplicationRecord
    has_many :projects
    has_many :songs, through: :projects
    validates :artist_name, presence: true, uniqueness: true
end
