class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.belongs_to :tour, index: true, foreign_key: true
      t.text :text
      t.integer :number

      t.timestamps null: false
    end
  end
end
