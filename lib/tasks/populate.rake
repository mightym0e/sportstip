namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [User, Tipgroup, Tip, Game, League].each(&:delete_all)
    
    User.populate 20 do |user|
      user.name    = Faker::Name.name
      user.email   = Faker::Internet.email
      user.password = '123'
    end
    
  end
end