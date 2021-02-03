class CreateExhibitionObjects < ActiveRecord::Migration[6.1]
  def change
    create_table :exhibition_objects do |t|
      t.references :art_object, null: false, foreign_key: true
      t.references :exhibition, null: false, foreign_key: true
      t.integer :order_number

      t.timestamps
    end
  end
end
