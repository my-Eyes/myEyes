class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :local_id
      t.integer :visitor_id

      t.timestamps null: false
    end
  end
end
