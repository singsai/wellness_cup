class Team < ActiveRecord::Base
  attr_accessible :name, :competition_id, :members_attributes
  
  belongs_to :competition    
  has_many :members, :order => "id ASC"
  accepts_nested_attributes_for :members
  
  validates_presence_of :name  
end
