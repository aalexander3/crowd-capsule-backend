class UploadSerializer < ActiveModel::Serializer
  attributes :id, :path, :upvotes
  belongs_to :user
end
