require 'rails_helper'

RSpec.describe "User logins" do
  scenario "user can login" do
    user = create(:user)
    
    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Login"

    expect(current_path).to eq places_path
    expect(page).to have_content(user.username)
  end

  scenario "user cannot login" do
    user = create(:user)

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "passord"
    click_button "Login"

    expect(current_path).to eq login_path
    expect(page).to_not have_content(user.username)
  end

end
