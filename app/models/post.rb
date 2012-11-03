class Post < ActiveRecord::Base
  attr_accessible :autor, :comentario, :conocimiento, :curso, :escuela_id, :fecha, :obra, :user_id, :codigo

  validates :autor, :presence => true
  validates :codigo, :presence => true
  validates :user_id, :presence => true
  validates :escuela_id, :presence => true
  validates :fecha, :presence => true
  validates :obra, :presence => true

  belongs_to :user, :inverse_of => :posts
  belongs_to :escuela, :inverse_of => :posts
end
