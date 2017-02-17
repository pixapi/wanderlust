require 'rails_helper'

RSpec.describe "User logins" do
  scenario "user can login" do
    user = User.create(username: "Maria", password: "password")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "password"
    click_button "Login"

    expect(current_path).to eq user_path(user)
    expect(page).to have_content("Welcome, Maria")
  end

  scenario "user cannot login" do
    user = User.create(username: "Maria", password: "password")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "passord"
    click_button "Login"

    expect(current_path).to eq login_path
    expect(page).to_not have_content("Welcome, Maria")
  end

end
