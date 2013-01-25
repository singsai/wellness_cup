class WeighIn < ActiveRecord::Base
  attr_accessible :end_date, :member_id, :start_date, :week, :weight
  
  belongs_to :member
end
