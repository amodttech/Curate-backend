class ExhibitionObject < ApplicationRecord
  belongs_to :art_object
  belongs_to :exhibition
end
