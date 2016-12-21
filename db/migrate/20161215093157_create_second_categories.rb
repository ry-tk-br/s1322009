class CreateSecondCategories < ActiveRecord::Migration
  def change
    create_table :second_categories do |t|
      t.string :name
      t.references :first_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
