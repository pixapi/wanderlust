require 'rails_helper'

RSpec.describe "User sees a place" do
  scenario "user can see a place" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    place = create(:place)

    visit places_path
    click_on place.name

    expect(current_path).to eq place_path(place)
    expect(page).to have_content(place.name)
    expect(page).to have_content(place.experience)
  end
end
