class CreateFirstCategories < ActiveRecord::Migration
  def change
    create_table :first_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
