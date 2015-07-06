class AddCoverPhotoToTours < ActiveRecord::Migration
  def change
    add_column :tours, :photo_url, :string
  end
end
