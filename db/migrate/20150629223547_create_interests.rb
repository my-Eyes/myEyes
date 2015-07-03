class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
