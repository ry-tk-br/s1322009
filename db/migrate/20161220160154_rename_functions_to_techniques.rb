class RenameFunctionsToTechniques < ActiveRecord::Migration
  def change
    rename_table :functions, :techniques
  end
end
