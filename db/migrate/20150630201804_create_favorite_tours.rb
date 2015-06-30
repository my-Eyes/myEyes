class CreateFavoriteTours < ActiveRecord::Migration
  def change
    create_table :favorite_tours do |t|
      t.integer :visitor_id
      t.references :tour

      t.timestamps null: false
    end
  end
end
