class Escuela < ActiveRecord::Base
  attr_accessible :institu, :provi_id

  validates :institu, :presence => true
  validates :provi_id, :presence => true

  belongs_to :provi, :inverse_of => :escuelas
  has_many :users, :through => :posts
  has_many :posts
end
