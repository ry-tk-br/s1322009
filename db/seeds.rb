# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

CSV.foreach('db/part.csv', encoding: 'Shift_JIS:UTF-8') do |row|
  Part.create(:name => row[0], :part_category_id => row[1], :lang1 => row[2], :lang2 => row[3], :lang3 => row[4], :lang4 => row[5], :openflow => row[6], :netconf => row[7], :ovsdb => row[8], :spec1 => row[9], :spec2 => row[10], :spec3 => row[11], :spec4 => row[12], :spec5 => row[13], :note1 => row[14], :note2 => row[15], :supported => row[16])
end

CSV.foreach('db/part_category.csv', encoding: 'Shift_JIS:UTF-8') do |row|
  PartCategory.create(:name => row[0], :note => row[1])
end

CSV.foreach('db/function.csv', encoding: 'Shift_JIS:UTF-8') do |row|
  Function.create(:name => row[0], :function_category_id => row[1], :purpose1 => row[2], :purpose2 => row[3], :purpose3 => row[4], :purpose4 => row[5], :note => row[6])
end

CSV.foreach('db/function_category.csv', encoding: 'Shift_JIS:UTF-8') do |row|
  FunctionCategory.create(:name => row[0], :note => row[1])
end

CSV.foreach('db/technique.csv', encoding: 'Shift_JIS:UTF-8') do |row|
  Technique.create(:name => row[0], :function_id => row[1], :part_id => row[2], :note => row[3], :adv_text => row[4], :sh_text => row[5])
end