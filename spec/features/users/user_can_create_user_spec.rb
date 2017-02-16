require 'rails_helper'

RSpec.describe "User creates a user" do
  scenario "user can create a user" do
    visit new_user_path

    fill_in "user[username]", with: "Maria"
    fill_in 'Password', with: "password"
    click_button "Create Account"

    expect(current_path).to eq("/users/#{User.last.id}")
    expect(page).to have_content("Welcome, Maria")
    expect(User.count).to eq(1)
  end
end
