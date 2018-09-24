class AddSmokingToShops < ActiveRecord::Migration
  def change
    add_column :shops, :smoking_ban, :boolean
  end
end
