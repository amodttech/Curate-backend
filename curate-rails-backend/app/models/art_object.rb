class ArtObject < ApplicationRecord
    has_many :exhibition_objects
    has_many :exhibitions, through: :exhibition_objects
end
