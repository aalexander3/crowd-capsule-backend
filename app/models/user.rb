class User < ApplicationRecord
  has_many :uploads
  validates :username, presence: true, uniqueness: true
end
