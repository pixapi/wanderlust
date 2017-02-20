class AddApprovedToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :approved, :boolean, default: false, null: false
  end
end
