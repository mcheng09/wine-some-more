class CreatePhotoColumn < ActiveRecord::Migration
  def change
    add_column :wines, :photo_url, :string
  end
end
