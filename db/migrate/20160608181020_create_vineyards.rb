class CreateVineyards < ActiveRecord::Migration
  def change
    create_table :vineyards do |t|
      t.string :name
      t.string :location
      t.string :yearbuilt
      t.string :founder
      t.string :currentowner
      t.string :vineyard_photo_url
      t.string :history
      t.string :thingstodo
      t.string :review
    end
  end
end
