class Provi < ActiveRecord::Base
  attr_accessible :prov

  validates :prov, :presence => true

  has_many :escuelas, :inverse_of => :provi
end
