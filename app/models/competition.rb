class Competition < ActiveRecord::Base
  attr_accessible :name, :start_date, :end_date
  
  has_many :teams
end
