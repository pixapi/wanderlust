require 'rails_helper'

RSpec.describe "User creates a comment" do
  scenario "user can create a comment" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    place = create(:place)

    visit place_path(place)

    within(".comments") do
      fill_in "comment[title]", with: "Great honeymoon destination"
      fill_in "comment[body]", with: "I had the best time of my life when I went with my husband after our wedding."
      click_on "Submit"
    end

    expect(current_path).to eq place_path(place)
    expect(page).to have_content("Great honeymoon destination")
  end
end
