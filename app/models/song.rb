class Song < ApplicationRecord
  belongs_to :projects
  has_many :parts
end
