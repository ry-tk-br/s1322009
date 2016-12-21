class AddNoteToFunctions < ActiveRecord::Migration
  def change
    add_column :functions, :note, :text
  end
end
