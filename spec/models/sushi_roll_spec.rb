require 'rails_helper'

RSpec.describe SushiRoll, type: :model do
  
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:spicy) }

    it do 
      # @user = FactoryGirl.create(:user)
      should validate_inclusion_of(:spicy).
        in_array(["None", "Mild", "Spicy"])
    end

    it { should validate_numericality_of(:price) }
  end 

  describe "associations" do
    it { should belong_to(:user) }
  end 

end
