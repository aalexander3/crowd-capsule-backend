class LocationSerializer < ActiveModel::Serializer
  attributes :id, :coordinates, :count, :name

  def coordinates
    arr = []
    arr << object.long
    arr << object.lat
    arr
  end

  def count
    object.uploads.count
  end

end
