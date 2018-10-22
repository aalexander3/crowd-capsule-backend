class UploadSerializer < ActiveModel::Serializer
  attributes :id, :path, :upvotes, :location_id, :location_name, :category_name
  belongs_to :user

  def location_id
    self.object.location.id
  end

  def location_name
    self.object.location.name
  end
  
  def category_name
    self.object.category.name
  end
end
