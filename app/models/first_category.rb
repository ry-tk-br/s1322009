class FirstCategory < ActiveRecord::Base
  has_many :second_categories
  has_many :functions, through: :second_categories
end
