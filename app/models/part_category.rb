class PartCategory < ActiveRecord::Base
  has_many :parts
  has_many :techniques, through: :parts
end
