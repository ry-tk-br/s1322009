class AddDetailsToTechniques < ActiveRecord::Migration
  def change
    add_reference :techniques, :function, index: true, foreign_key: true
    add_reference :techniques, :part, index: true, foreign_key: true
    add_column :techniques, :adv_text, :text
    add_column :techniques, :sh_text, :text
  end
end
