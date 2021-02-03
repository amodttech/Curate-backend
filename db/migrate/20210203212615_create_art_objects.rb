class CreateArtObjects < ActiveRecord::Migration[6.1]
  def change
    create_table :art_objects do |t|
      t.integer :met_id
      t.string :title
      t.string :artist
      t.string :date
      t.string :origin
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
