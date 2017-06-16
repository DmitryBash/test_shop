FactoryGirl.define do
  factory :like do
    user
    product

    trait :first_user_like do
      user User.first
    end

    trait :first_product_like do
      product Product.first
    end
  end
end

# FactoryGirl.build_list(:like, 10, :first_user_like, :first_product_like)
