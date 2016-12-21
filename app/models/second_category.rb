class SecondCategory < ActiveRecord::Base
  belongs_to :first_category
  has_many :functions
end
