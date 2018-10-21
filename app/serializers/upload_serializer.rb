class UploadSerializer < ActiveModel::Serializer
  attributes :id, :path, :upvotes, :location_id
  belongs_to :user

  def location_id
    self.object.location.id
  end
end
