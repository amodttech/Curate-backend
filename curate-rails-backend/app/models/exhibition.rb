class Exhibition < ApplicationRecord
  belongs_to :user
  has_many :exhibition_objects
  accepts_nested_attributes_for :exhibition_objects, allow_destroy: true
end
