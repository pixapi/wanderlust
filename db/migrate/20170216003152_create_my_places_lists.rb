class CreateMyPlacesLists < ActiveRecord::Migration
  def change
    create_table :my_places_lists do |t|
      t.boolean :visited, null: false, default: false
      t.references :user, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true

      t.timestamps null:false
    end
  end
end
