class User < ApplicationRecord
    has_many :exhibitions
    has_many :exhibition_objects, through: :exhibitions
    accepts_nested_attributes_for :exhibitions, allow_destroy: true
end
