class Part < ActiveRecord::Base
  belongs_to :part_category
  has_many :techniques, :dependent => :destroy

  scope :of_supported, -> { where(openflow: true) }
  scope :netconf_supported, -> { where(netconf: true) }
  scope :ovsdb_supported, -> { where(ovsdb: true) }

  scope :written_by_c, -> { where(lang1: true) }
  scope :written_by_ruby, -> { where(lang2: true) }
  scope :written_by_python, -> { where(lang3: true) }
  scope :written_by_java, -> { where(lang4: true) }
end
