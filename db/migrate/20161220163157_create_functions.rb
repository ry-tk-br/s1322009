class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :name
      t.references :function_category, index: true, foreign_key: true
      t.boolean :purpose1
      t.boolean :purpose2
      t.boolean :purpose3
      t.boolean :purpose4

      t.timestamps null: false
    end
  end
end
