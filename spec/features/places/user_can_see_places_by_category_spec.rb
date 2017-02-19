require 'rails_helper'

RSpec.describe "User sees places of a category" do
  scenario "user can see places of a category" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    place1 = create(:place)

    visit places_path
    click_on place1.category.name

    expect(current_path).to eq category_path(place1.category)
    expect(page).to have_content "#{place1.name} (#{place1.country})"
  end
end
