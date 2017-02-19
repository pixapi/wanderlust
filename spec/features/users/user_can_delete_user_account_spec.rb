require 'rails_helper'

RSpec.describe "User deletes user account" do
  scenario "user can delete user account" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit user_path(user)

    click_on "Delete Account"

    expect(current_path).to eq root_path
    expect(page).to have_content("Login")
    expect(page).to have_content("Sign in")
  end
end
