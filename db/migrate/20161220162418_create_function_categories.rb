class CreateFunctionCategories < ActiveRecord::Migration
  def change
    create_table :function_categories do |t|
      t.string :name
      t.text :note

      t.timestamps null: false
    end
  end
end
