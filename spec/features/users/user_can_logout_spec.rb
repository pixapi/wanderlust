require 'rails_helper'

RSpec.describe "Loggin user logouts" do
  scenario "logged in user can logout" do
    user = User.create(username: "Maria", password: "password")
    # user = create(:user)

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "password"
    click_button "Login"

    expect(current_path).to eq user_path(user.id)
    expect(page).to have_content("Welcome, Maria")

    click_link "Logout"

    expect(current_path).to eq login_path
    expect(page).to_not have_content("Welcome, Maria")

  end
end
