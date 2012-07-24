class Backlog < ActiveRecord::Base
  belongs_to :product
  belongs_to :release
  belongs_to :sprint
  belongs_to :user
  attr_accessible :description, :points, :priority, :value
end
