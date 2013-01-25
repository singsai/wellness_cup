require 'spec_helper'

describe Member do
  before {@member = Member.new(first_name:"Al", last_name:"Bundy", email:"al.bundy@gmail.com", location_id:0, country_code:"US", phone_number:"5555555", team_id:1, shib:"food", captain:true)}

  subject { @member }
  
  it { should respond_to(:email) }
  it { should respond_to(:shib) }
  
  it { should be_valid }
  
  describe "when email is not present" do
    before { @member.email = " " }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @member.email = invalid_address
        @member.should_not be_valid
      end      
    end
  end    
  
  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @member.email = valid_address
        @member.should be_valid
      end      
    end
  end
  
  describe "when email address is already taken" do
    before do
      user_with_same_email = @member.dup
      user_with_same_email.save
    end

    it { should_not be_valid }
  end  
end