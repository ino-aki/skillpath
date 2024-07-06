# ファクトリー定義の外にメソッドを定義
def generate_random_profiles
  number_of_profiles = rand(1..10) # 1から10の間のランダムな数
  profiles = Array.new(number_of_profiles) { Faker::Job.title } # ランダムな職業タイトルを生成
  "取得資格: #{profiles.join(', ')}" # カンマで区切って結合
end

FactoryBot.define do
  factory :user do
    nickname { Faker::Internet.username }
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    profile { generate_random_profiles } # 外部メソッドを呼び出す
  end
end
