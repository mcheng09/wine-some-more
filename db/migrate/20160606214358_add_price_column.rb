class AddPriceColumn < ActiveRecord::Migration
  def change
    add_column :wines, :price, :string
  end
end
