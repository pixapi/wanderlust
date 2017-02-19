require 'rails_helper'

RSpec.describe "User sees all places" do
  scenario "user can see all places" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    place = create(:place)
    place2 = create(:place)

    visit places_path

    expect(current_path). to eq places_path
    expect(page).to have_content("#{place.name} (#{place.country})")
    expect(page).to have_content("#{place2.name} (#{place2.country})")
  end
end
