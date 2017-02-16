require 'rails_helper'

describe MyPlacesList do
  context "validations" do
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :place_id }
    it { should validate_presence_of :visited }
    it { should belong_to(:user) }
    it { should belong_to(:place) }
  end

  context "methods" do

  end
end
