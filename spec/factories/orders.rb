FactoryGirl.define do
  factory :order do
    account_id 1
    status "MyString"
    total_price ""
    subtotal ""
    tax ""
    shipping ""
  end
end
