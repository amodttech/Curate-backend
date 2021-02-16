class RemoveDescriptionFromArtObjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :art_objects, :description, :string
  end
end
