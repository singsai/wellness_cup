class Member < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :location_id, :weigh_ins_attributes, :country_code, :phone_number, :shib, :team_id, :captain
  
  belongs_to :team
  belongs_to :location
  
  has_many :weigh_ins, :order => "id ASC"
  accepts_nested_attributes_for :weigh_ins
  
  email_regex =/\A[a-z0-9][\w+\-.]+@[a-z\d.]+\.[a-z]+\z/i

  validates :email, :presence   => true,
                    :format     => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }  

  before_save { |user| user.email = email.downcase }  
end
