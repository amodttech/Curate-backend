class ExhibitionObjectSerializer < ActiveModel::Serializer
  attributes :id, :art_object_id, :exhibition_id, :order_number
end
