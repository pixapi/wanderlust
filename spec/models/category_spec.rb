require 'rails_helper'

describe Category do
  context "validations" do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
    it { should have_many :places }
  end

  context "methods" do

  end
end
