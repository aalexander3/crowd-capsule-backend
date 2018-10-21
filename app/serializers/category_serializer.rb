class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :uploads
end
