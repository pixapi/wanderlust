require 'rails_helper'

RSpec.describe "User sees all places" do
  scenario "user can see all places" do
    user = User.create(username: "Maria", password: "password")
    continent = Continent.create(name: "Africa")
    category = Category.create(name: "photography")
    category2 = Category.create(name: "gastronomy")
    place = Place.create(name: "Serengeti National Park",
                        country: "Tanzania",
                        experience: "Being amazed by wildlife",
                        image_path: "http://www.zanzibarmagic.com/tanzania%20wildlife%20lodge%20safari%20serengeti%20ngorongoro%20manyara%20tarangire%2017.jpg",
                        category_id: category.id,
                        continent_id: continent.id)
    place2 = Place.create(name: "Fez",
                        country: "Morocco",
                        experience: "Feeling in the colorful tale of One Thousand and One nights",
                        image_path: "http://www.trtarabic.tv/wp-content/uploads/2015/06/04.jpg",
                        category_id: category2.id,
                        continent_id: continent.id)

    visit user_path(user)
    click_on "See Best Places"

    save_and_open_page
    expect(current_path). to eq places_path
    expect(page).to have_content("Being amazed by wildlife")
    expect(page).to have_content("Morocco")
  end
end
