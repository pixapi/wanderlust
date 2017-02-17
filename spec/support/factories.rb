FactoryGirl.define do
  factory :place do
    name
    country
    experience
    category_id
    continent_id
  end

  # FactoryGirl.define do
  # factory :place do
  #   sequence :name do |x|
  #     "place #{x}"
  #   end
  #   country "thing"
  #   experience 1
  #   category
  #   continent
  # end

  sequence :name do |n|
    "Place #{n}"
  end

  sequence :country, ["A", "B", "C"].cycle do |n|
    "Country #{n}"
  end

  sequence :experience, ["A", "B", "C"].cycle do |n|
    "Experience #{n}"
  end

  sequence :category_id, ["1", "2", "3"].cycle do |n|
    "#{n}"
  end

  sequence :continent_id, ["1", "2", "3"].cycle do |n|
    "#{n}"
  end

  factory :user do
    username
    password
  end

  sequence :username do |n|
    "name#{n}"
  end

  sequence :password do |n|
    "password#{n}"
  end

  factory :category do
    name
  end

  sequence :name do |n|
    "category#{n}"
  end

  factory :comment do
    title
    body
    user_id
    place_id
  end

  sequence :title do |n|
    "title#{n}"
  end

  sequence :body do |n|
    "body#{n}"
  end
  sequence :user_id do |n|
    "#{n}"
  end
  sequence :place_id do |n|
    "#{n}"
  end

  factory :continent do
    name
  end

  sequence :name do |n|
    "continent#{n}"
  end

  factory :my_place_list do
    user_id
    place_id
    visited
  end

  sequence :user_id do |n|
    "#{n}"
  end

  sequence :place_id do |n|
    "#{n}"
  end

  sequence :visited, ["true", "false"].cycle do |n|
    "#{n}"
  end
end
