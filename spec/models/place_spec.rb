require 'rails_helper'

describe Place do
  context "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :country }
    it { should validate_presence_of :experience }
    it { should validate_presence_of :category_id }
    it { should validate_presence_of :continent_id }
    it { should validate_uniqueness_of :name }
    it { should belong_to(:continent) }
    it { should belong_to(:category) }
    it { should have_many(:users).through(:my_places_lists) }
  end

  context "methods" do

  end
end
