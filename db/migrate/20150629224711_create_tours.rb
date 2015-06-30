class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.integer :local_id
      t.string :name
      t.belongs_to :interest, index: true, foreign_key: true
      t.text :description

      t.timestamps null: false
    end
  end
end
