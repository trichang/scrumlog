class Sprint < ActiveRecord::Base
  attr_accessible :end_date, :goal, :name, :start_date
  
  belongs_to :product
  belongs_to :release
  has_many :backlog
end
