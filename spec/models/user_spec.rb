require 'rails_helper'

describe User do
  context "validations" do
    it { should validate_presence_of :username }
    it { should validate_uniqueness_of :username }
    it { should have_many :comments }
    it { should have_many :my_places_lists }
    it { should have_many(:places).through(:my_places_lists) }
  end

  context "methods" do

  end
end
