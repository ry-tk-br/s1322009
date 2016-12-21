class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :name
      t.references :part_category, index: true, foreign_key: true
      t.boolean :lang1
      t.boolean :lang2
      t.boolean :lang3
      t.boolean :lang4
      t.boolean :openflow
      t.boolean :netconf
      t.boolean :ovsdb
      t.integer :spec1
      t.integer :spec2
      t.integer :spec3
      t.integer :spec4
      t.integer :spec5

      t.timestamps null: false
    end
  end
end
