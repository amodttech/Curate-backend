class UserSerializer < ActiveModel::Serializer
  attributes :id, :display_name, :username, :bio, :exhibitions

  def exhibitions
    ActiveModel::SerializableResource.new(object.exhibitions,  each_serializer: ExhibitionSerializer)
  end
end
