class FunctionCategory < ActiveRecord::Base
  has_many :functions
  has_many :techniques, through: :functions
end
