require 'rails_helper'

RSpec.describe "User creates a comment" do
  scenario "user can create a comment" do
    comment = create(:comment)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(comment.user)

    visit place_path(comment.place)

    expect(current_path).to eq place_path(comment.place)
    expect(page).to have_content(comment.title)
    expect(page).to have_content(comment.body)
  end
end
