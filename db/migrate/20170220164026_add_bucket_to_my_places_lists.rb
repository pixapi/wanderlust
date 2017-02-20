class AddBucketToMyPlacesLists < ActiveRecord::Migration
  def change
    add_column :my_places_lists, :bucket, :boolean, default: false
  end
end
