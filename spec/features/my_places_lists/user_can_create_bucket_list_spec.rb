require 'rails_helper'

RSpec.describe "User creates a places bucket list" do
  xscenario "user can create a places bucket list" do
    user = create(:user)
    place1 = create(:place)
    place2 = create(:place)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit user_path(user)
    click_on "Create Bucket List"

    find(:css, "#place[value='place1.name']").set(true)

    expect(current_path).to eq user_path(user)
    expect(page).to have_content(place1.name)
  end
end
