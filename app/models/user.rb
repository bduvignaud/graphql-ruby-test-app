class User < ApplicationRecord
  has_and_belongs_to_many :providers

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_uniqueness_of :first_name, scope: :last_name, message: "and Last name has already been taken"
end
