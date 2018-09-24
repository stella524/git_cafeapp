class AddWithdogToShops < ActiveRecord::Migration
  def change
    add_column :shops, :withdog, :boolean
  end
end
