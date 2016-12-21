class Function < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :function_category
  has_many :techniques, :dependent => :destroy

  scope :purpose1, -> { where(purpose1: true) }
  scope :purpose2, -> { where(purpose2: true) }
  scope :purpose3, -> { where(purpose3: true) }
  scope :purpose4, -> { where(purpose4: true) }

=======
  belongs_to :second_category
>>>>>>> origin/master
end
