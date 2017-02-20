require 'rails_helper'

RSpec.describe "User sees user profile" do
  scenario "user can see user profile" do
    user = User.create(username: "Maria", password: "password")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    visit places_path

    within ("h4") do
      click_on "My Profile"
    end

    expect(current_path).to eq("/users/#{User.last.id}")
    expect(page).to have_content("Hi, Maria!")
    expect(page).to have_content("My Bucket List")
    expect(page).to have_content("Places I've been to")
  end

end
