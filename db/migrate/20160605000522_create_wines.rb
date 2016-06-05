class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.string :year
      t.string :vineyard
      t.string :rating
      t.string :description
      t.timestamps
    end
  end
end
