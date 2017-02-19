require 'rails_helper'

RSpec.describe "User sees places of a continent" do
  scenario "user can see places of a continent" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    place1 = create(:place)

    visit places_path
    click_on place1.continent.name

    expect(current_path).to eq continent_path(place1.continent)
    expect(page).to have_content "#{place1.name} (#{place1.country})"

  end
end
