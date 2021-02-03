class User < ApplicationRecord
    has_many :exhibitions
    has_many :exhibition_objects, through: :exhibitions
end
