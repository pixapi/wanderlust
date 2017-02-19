require 'rails_helper'

RSpec.describe "User edits user profile" do
  scenario "user can edit user profile" do
    user = User.create(username: "Maria", password: "password")

    visit user_path(user)
    click_on "Edit Profile"

    fill_in "user[username]", with: "Teresa"
    fill_in 'Password', with: "password"
    click_button "Update User"

    expect(current_path).to eq("/users/#{User.last.id}")
    expect(page).to have_content("Hi, Teresa!")
  end

end
