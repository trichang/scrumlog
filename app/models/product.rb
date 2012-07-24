class Product < ActiveRecord::Base
  attr_accessible :code, :name, :vision, :full_name
  
  belongs_to :account
  has_many :sprint
  has_many :release
end
