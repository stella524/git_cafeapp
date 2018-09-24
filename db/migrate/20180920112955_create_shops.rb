class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.text :image
      t.text :text
      t.text :shop_name
      t.timestamps
    end
  end
end
