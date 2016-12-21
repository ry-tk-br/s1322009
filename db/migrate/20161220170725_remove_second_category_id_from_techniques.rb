class RemoveSecondCategoryIdFromTechniques < ActiveRecord::Migration
  def change
    remove_column :techniques, :second_category_id, :integer
  end
end
