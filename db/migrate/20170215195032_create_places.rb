class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :country
      t.string :experience
      t.string :image_path
      t.references :continent, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null:false
    end
  end
end
