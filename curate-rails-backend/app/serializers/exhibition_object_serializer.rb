class ExhibitionObjectSerializer < ActiveModel::Serializer
  attributes :id, :art_object_id, :art_object, :exhibition_id, :order_number, :description


  def art_object
    ActiveModel::SerializableResource.new(object.art_object,  each_serializer: ArtObjectSerializer)
  end
end
