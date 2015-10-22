require 'rails_helper'

RSpec.describe Contact, type: :model do
  before :each do
    @contact = Contact.new(:first_name=>"Zuhair",:user_id => 2)
  end

  describe "#new" do
    it "manually creating an object" do
      @contact.should be_an_instance_of Contact
    end
    it "usues factory creating object" do
      @user = FactoryGirl.create(:user, :email=>"first@factorytest.com")
      @factoryContact = FactoryGirl.create(:contact)
      @factoryContact.should be_an_instance_of Contact
    end
  end

  describe "#name" do
    it "should return the first name" do
      @contact.first_name.should eql "Zuhair"
    end
  end

    #describe "#error" do
    #  it {expect {@contact1.save}.to raise_error }
    #  it { should validate_presence_of(:user_id) }
  #  end
end
