class Release < ActiveRecord::Base
  attr_accessible :name
  
  belongs_to :product
  has_many :sprint
  has_many :backlog
end
