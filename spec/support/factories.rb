FactoryGirl.define do
  factory :place do
    sequence :name do |n|
      "Place #{n}"
    end
    sequence :country, ["A", "B", "C"].cycle do |n|
      "Country #{n}"
    end
    sequence :experience, ["A", "B", "C"].cycle do |n|
      "Experience #{n}"
    end
    category
    continent
  end

  factory :user do
    sequence :username do |n|
      "name#{n}"
    end
    sequence :password do |n|
      "password#{n}"
    end
  end

  factory :category do
    sequence :name do |n|
      "category#{n}"
    end
  end

  factory :comment do
    sequence :title do |n|
      "title#{n}"
    end
    sequence :body do |n|
      "body#{n}"
    end
    user
    place
  end

  factory :continent do
    sequence :name, ["Europe", "Asia", "Africa", "Australia", "South America", "North America", "Antarctica"].cycle do |n|
      "#{n}"
    end
  end

  factory :my_places_list do
    user
    place
    sequence :visited, ["true", "false"].cycle do |n|
      "#{n}"
    end
  end
end
