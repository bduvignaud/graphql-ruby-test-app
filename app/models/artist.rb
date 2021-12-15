class Artist < ApplicationRecord
  has_and_belongs_to_many :providers
  has_many :albums
end
