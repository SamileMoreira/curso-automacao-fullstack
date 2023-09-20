require_relative "../models/user_model"
require "faker"

FactoryBot.define do
  factory :user, class: UserModel do
    full_name { "Papito Sky" }
    email { "papito@qaninja.io" }
    password { "jedi123" }

    after(:build) do |user|
      Database.new.delete_user(user.email)
    end
  end

  factory :registered_user, class: UserModel do
    id { 0 }

    # full_name { Faker::Movies::StarWars.character }
    # email { Faker::Internet.free_email(full_name)
    # O Faker pe usado para gerar massa de dados aleatórios, mas o ruby não ata permitindo
    #parece que vai ser desabilitado
    full_name { "Samuel Moreira" }
    email { "samuel@qaninja.io" }
    password { "Samu123" }

    after(:build) do |user|
      Database.new.delete_user(user.email)
      result = ApiUser.save(user.to_hash)
      user.id = result.parsed_response["id"]
    end
  end

  factory :user_wrong_email, class: UserModel do
    full_name { "Papito Sky" }
    email { "papito#jedi.com" }
    password { "jedi123" }
  end

  factory :empty_name_user, class: UserModel do
    full_name { "" }
    email { "papito@jedi.com" }
    password { "jedi123" }
  end

  factory :empty_email_user, class: UserModel do
    full_name { "Samile Moreira" }
    email { "" }
    password { "jedi123" }
  end

  factory :empty_password_user, class: UserModel do
    full_name { "Savyo Moreira" }
    email { "papito@jedi.com" }
    password { "" }
  end
  factory :notnull_email_user, class: UserModel do
    full_name { "Savyo Moreira" }
    password { "jedi123" }
  end

  factory :notnull_name_user, class: UserModel do
    email { "papito@jedi.com" }
    password { "jedi123" }
  end

  factory :notnull_password_user, class: UserModel do
    full_name { "Savyo Moreira" }
    email { "papito@jedi.com" }
  end
end
