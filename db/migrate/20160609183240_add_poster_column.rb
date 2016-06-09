class AddPosterColumn < ActiveRecord::Migration
  def change
    add_column :wines, :user, :string
  end
end
