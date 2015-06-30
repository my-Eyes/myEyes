class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :latitude
      t.string :longitude
      t.belongs_to :step, index: true, foreign_key: true
      t.string :address

      t.timestamps null: false
    end
  end
end
