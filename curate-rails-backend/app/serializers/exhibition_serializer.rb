class ExhibitionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :description, :theme, :exhibition_objects

  def exhibition_objects
    ActiveModel::SerializableResource.new(object.exhibition_objects,  each_serializer: ExhibitionObjectSerializer)
  end
end
