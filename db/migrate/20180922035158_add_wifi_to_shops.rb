class AddWifiToShops < ActiveRecord::Migration
  def change
    add_column :shops, :wifi, :boolean
  end
end
