#NOTE: Factory Girl Expects that each class inherits from ActiveRecord
FactoryGirl.define do
  factory :user_nil, class: User do

    email nil
    password nil



  end
end


FactoryGirl.define do
  factory :user_valid, class: User do

    email "a@a.com"
    password "555555"



  end
end