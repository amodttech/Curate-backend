class AddDescriptionToExhibitionObjects < ActiveRecord::Migration[6.1]
  def change
    add_column :exhibition_objects, :description, :string
  end
end
