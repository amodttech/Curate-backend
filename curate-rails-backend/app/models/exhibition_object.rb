class ExhibitionObject < ApplicationRecord
  belongs_to :art_object
  belongs_to :exhibition

  # validates :art_object_id, uniqueness: {scope: :exhibition_id}
end
