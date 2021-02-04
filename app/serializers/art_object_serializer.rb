class ArtObjectSerializer < ActiveModel::Serializer
  attributes :id, :met_id, :title, :artist, :date, :origin, :image, :description
end
