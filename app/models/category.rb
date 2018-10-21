class Category < ApplicationRecord
  has_many :uploads
  validates :name, presence: true

end
