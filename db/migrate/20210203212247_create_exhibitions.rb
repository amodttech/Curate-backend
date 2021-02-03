class CreateExhibitions < ActiveRecord::Migration[6.1]
  def change
    create_table :exhibitions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :theme

      t.timestamps
    end
  end
end
