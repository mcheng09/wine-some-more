class AddColumnVineyardidToWines < ActiveRecord::Migration
  def change
    add_column :wines, :vineyard_id, :integer
  end
end
