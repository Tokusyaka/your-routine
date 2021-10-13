FactoryBot.define do
  factory :training do
    title {'腕立て伏せ'}
    content {'10回'}
    start_time {'29 Mar 2015'}
    association :user
  end
end
