require 'rails_helper'

describe Comment do
  context "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :body }
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :place_id }
    it { should belong_to(:user) }
  end

  context "methods" do

  end
end
