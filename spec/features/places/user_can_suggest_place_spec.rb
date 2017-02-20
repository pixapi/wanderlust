require 'rails_helper'

RSpec.describe "User suggests a place" do
  scenario "user can suggest a place" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    continent = create(:continent)
    category = create(:category)

    visit places_path

    within("h2") do
      click_on "Suggest a place"
    end

    fill_in "place[name]", with: "place1"
    fill_in "place[country]", with: "country1"
    find("#place_continent_id").find(:xpath, "option[2]").select_option
    fill_in "place[experience]", with: "Magic sunset from Mirador de San Jeronimo"
    find("#place_category_id").find(:xpath, "option[2]").select_option
    click_button "Suggest Place"

    expect(current_path). to eq places_path
    expect(Place.count).to eq(1)
    expect(page).to have_content("Thanks for your recommendation of a great place")
  end
end
