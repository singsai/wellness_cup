class Member < ActiveRecord::Base
  attr_accessible :captain, :country_code, :email, :first_name, :last_name, :location_id, :phone_number, :shib, :team_id
end
