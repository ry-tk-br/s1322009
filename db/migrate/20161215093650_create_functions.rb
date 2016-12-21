class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :name
      t.text :note
      t.references :second_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
