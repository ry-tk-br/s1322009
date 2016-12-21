class Technique < ActiveRecord::Base
  belongs_to :function
  belongs_to :part
end
