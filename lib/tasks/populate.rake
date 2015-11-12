task :sample_data => :environment do
  require 'faker'
end

namespace :db do
  desc "Populate database"
  task :populate => :environment do
    100.times do |n|
      User.create(
        username: Faker::Internet.user_name,
        password: Faker::Internet.password,
        email: Faker::Internet.email,
        isadmin: false
      )
    end
  end
end
